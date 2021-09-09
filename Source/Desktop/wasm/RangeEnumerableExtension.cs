// enables `foreach (int i in 1..4) {}`

// https://github.com/dotnet/docs/pull/20689
// https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-9.0/extension-getenumerator

public static class RangeEnumeratorExtension
{
    public static IEnumerator<int> GetEnumerator( this Range range )
        => Enumerable.Range( range.Start.Value, range.End.Value - range.Start.Value ).GetEnumerator();
}