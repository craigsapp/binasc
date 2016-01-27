Binasc &ndash; Binary to ASCII hex code converter
===================================================

Binasc converts binary data files into text files containing hex byte codes 
of the binary contents.  The program can also reverse the process to generate
binary content from hex byte codes.  Additional text codes for binary, 
decimal and ASCII characters can be interpreted into binary bytes.

Options
===========

With no options, the binasc program will print hex byte codes for the input 
data along with a comment line underneath each line of bytes which displays
the printable ASCII character values for the bytes.

The -b option can be given to display only the hex bytes without the 
ASCII character commentary.  By default 25 byte codes will be printed on 
a line.  The --mod option can be used to change that number, such as --mod 10
to display 10 hex byte codes per line.

The -a option similarly gives only the printable ASCII characters found in the
input data.  The --wrap option can be given to specify the length of the line
for printing the ASCII characters.  --wrap 50 will limit the length of lines
to 50 printable characters per line.

The -m option will print a man page to standard output.

The -c option will compile the byte codes into a binary file.  Usage:
   binasc -c binary-file text-file
Where text-file contains the byte codes in a text file.

For more information see http://binasc.sapp.org (still needs cleanup 
after migrating from Google Code).

Examples, primarily of MIDI file compiling, can be found on the wiki page:
    https://github.com/craigsapp/binasc/blob/wiki/examples.md


Online
=========

An online version of the binasc program can be found at:
    http://www.ccarh.org/software/binasc
You can drag files into the textarea on that page to convert the file 
to hex codes.






