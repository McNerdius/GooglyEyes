using System;
using System.Collections.Generic;
using System.Linq;

// ints vs bytes: System.Text.Json
// wants to do Base64 things with byte[]
// so i expose some things as ints

public static class MatrixClock
{
    private static BitMatrix matrix = new();

    public static int[] ToByteArray( TimeSpan time )
    {
        var hours = time.Hours;
        var morning = hours < 12;

        var (top, bottom) = (hours %= 12) switch
        {
            >= 6 => (6, hours - 6),
            _ => (hours, 0)
        };

        matrix[0] = rowify( top );
        matrix[1] = rowify( bottom );

        byte rowify( int number )
        {
            var value = (byte) (((1 << number + 1) - 1) & 0x7E);
            return (byte) (morning ? ~value : value);
        }

        matrix[2] = (byte) (morning ? 255 : 0);

        var minutes = time.Minutes;
        var ones = minutes % 10;
        var tens = (minutes - ones) / 10;

        var left = digits[ones].Select( ( row, index ) => row ).ToList();
        var right = digits[tens].Select( ( row, index ) => row << 4 ).ToList();

        var bytes = left.Zip( right, ( l, r ) => morning ? ~(l | r) : l | r ).ToArray();

        foreach ( var row in bytes.Select( ( value, index ) => (value, index) ) )
        {
            matrix[row.index + 3, reverse: true] = (byte) row.value;
        }

        return matrix.Bytes;
    }

    // yes, this is indeed a zero-based, integer-keyed dictionary and not a List
    // i find it more fitting because the key is the digit represented by the value
    static Dictionary<int, int[]> digits = new()
    {
        [0] = new[]
        {
            0b111,
            0b101,
            0b101,
            0b101,
            0b111,
        },
        [1] = new[]
        {
            0b010,
            0b110,
            0b010,
            0b010,
            0b111,
        },
        [2] = new[]
        {
            0b111,
            0b001,
            0b111,
            0b100,
            0b111,
        },
        [3] = new[]
        {
            0b111,
            0b001,
            0b111,
            0b001,
            0b111,
        },
        [4] = new[]
        {
            0b101,
            0b101,
            0b111,
            0b001,
            0b001,
        },
        [5] = new[]
        {
            0b111,
            0b100,
            0b111,
            0b001,
            0b111,
        },
        [6] = new[]
        {
            0b111,
            0b100,
            0b111,
            0b101,
            0b111,
        },
        [7] = new[]
        {
            0b111,
            0b001,
            0b001,
            0b001,
            0b001,
        },
        [8] = new[]
        {
            0b111,
            0b101,
            0b111,
            0b101,
            0b111,
        },
        [9] = new[]
        {
            0b111,
            0b101,
            0b111,
            0b001,
            0b111,
        }
    };
}