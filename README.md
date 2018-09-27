# longword

For finding the longest/best word to play in games such
as Capitals Battle (now Words Royale) by NimbleBit LLC.

Takes three arguments, but only the first is mandatory:

1. List of letters to chose from, with multiplicity
2. Minimum length of words to report
3. Mandatory letters to filter by (should have multiplicty, but doesn't)

Example:

    $ ./longword.pl amghazeni
    a
    aa
    aam
    ae
    aga
    again
    agami
    agaze
    ...
    ziega
    zig
    zing

    $ ./longword.pl amghazeni 7
    amazing
    genizah
    magazine

    $ ./longword.pl amghazeni 7 me
    magazine

## Author

[Thomas Insel](http://tinsel.org/) <tinsel@tinsel.org>

