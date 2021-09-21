using System;
using System.Collections.Generic;
using System.Linq;

// ints vs bytes: System.Text.Json
// wants to do Base64 things with byte[]
// so i expose some things as ints

public static class LedMatrix
{
    public static int[] ToByteArray( TimeSpan time )
    {
        var matrix = new BitMatrix();
        var hours = time.Hours;

        var (top, bottom) = (hours %= 12) switch
        {
            >= 6 => (6, hours - 6),
            _ => (hours, 0)
        };

        matrix[0] = rowify( top );
        matrix[1] = rowify( bottom );

        byte rowify( int number ) => (byte) (((1 << number + 1) - 1) & 0x7E);

        matrix[2] = 0;

        var minutes = time.Minutes;
        var bytes = ToByteArray( minutes );

        foreach ( var row in bytes.Select( ( value, index ) => (value, index) ) )
        {
            matrix[row.index + 3, reverse: true] = (byte) row.value;
        }

        return matrix.Bytes;
    }

    internal static int[] ToByteArray( int value )
    {
        if ( value is < 0 or > 99 )
            throw new ArgumentOutOfRangeException( nameof( value ) );

        var ones = value % 10;
        var tens = (value - ones) / 10;

        var left = Digits[ones].Select( ( row, index ) => row ).ToList();
        var right = Digits[tens].Select( ( row, index ) => row << 5 ).ToList();

        var bytes = left.Zip( right, ( l, r ) => l | r ).ToArray();

        return bytes;
    }

    public static int[] ToByteArray( float value )
    {
        var matrix = new BitMatrix();

        if ( value > 9.9 )
            return ToByteArray( (int) value );

        value = (int) Math.Round( value, 1 ) * 10;

        var bytes = ToByteArray( value );

        foreach ( var row in bytes.Select( ( value, index ) => (value, index) ) )
        {
            matrix[row.index, reverse: true] = (byte) row.value;
        }

        matrix[5] = 0;
        matrix[6] = 0b00100100;
        matrix[7] = 0b00011000;

        return matrix.Bytes;
    }

    // yes, this is indeed a zero-based, integer-keyed dictionary and not a List
    // i find it more fitting because the key is the digit represented by the value
    public static readonly Dictionary<int, int[]> Digits = new()
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