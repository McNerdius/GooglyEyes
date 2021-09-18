using System.Collections.Generic;
using System.Linq;

// ints vs bytes: System.Text.Json
// wants to do Base64 things with byte[]
// so i expose some things as ints

public class BitMatrix
{
    private static readonly IEnumerable<int> eight = Enumerable.Range( 0, 8 );

    public bool[][] Bits = eight.Select( _ => eight.Select( _ => false ).ToArray() ).ToArray();

    public int[] Bytes => eight.Select( i => this[i, false] ).ToArray();

    public bool this[int x, int y]
    {
        get => Bits[x][y];
        set => Bits[x][y] = value;
    }

    public int this[int x, bool reverse = false]
    {
        get => Sum( Bits[x], reverse );
        set => Bits[x] = Extract( value, reverse );
    }

    public static byte Sum( IEnumerable<bool> bits, bool reverse )
        => (byte) eight.Select
        (
            bit => bits.ElementAtOrDefault( reverse ? 7 - bit : bit ) ? 1 << bit : 0
        ).Sum();

    public static bool[] Extract( int value, bool reverse )
        => eight.Select
        (
            bit => (value & (reverse ? (128 >> bit) : (1 << bit))) != 0
        ).ToArray();
}
