---
layout: default
title: Binasc
summary: Homepage for the binasc program.
vim: ts=3
---

<p>
The <em>binasc</em> program functions similar to a hex editor.  Bytes can be 
converted into hexadecimal byte codes that in turn can be converted back into
bytes.  Byte codes can be expressed in multiple ways such as hexadecimal, 
decimal, and binary.  In addition, decimal codes can be big- or little-endian, spanning
multiple bytes.  Also 4- and 8-byte floating point ASCII values can be convert
into their binary byte equivalents.
</p>

<h3> Synopsis </h3>
<pre>binasc [-a | -b | -c output.bin ] input [ > output.txt ]</pre>
<pre>cat input.bin | binasc [-a|-b] [ > output.txt ]</pre>
<pre>cat input.txt | binasc -c output.bin</pre>

By default, <em>binasc</em>

<table cellpadding="0" cellspacing="0">
<tr><td>*option*</td><td>*meaning*</td></td>
<tr><td> <code>-a</code>       </td><td> Display only ASCII printable characters contained in binary input file (no hex bytes) </td></tr>
<tr><td> <code>-b</code>       </td><td> Display only hex bytes contain in binary input file (no ASCII-printable characters) </td></tr>
<tr><td> <code>-c file</code> </td><td> Input file contains hex bytes (or other formats of bytes described below) which will be compiled into binary data stored in `file` </td></tr>
<tr><td> <code>--mod #</code> </td><td> Set the number of hex bytes displayed on each line.  The default is 25 hex bytes. </td></tr>
<tr><td> <code>--wrap #</code> </td><td> Set the line length when the `-a` option is used.  The default is 75 characters. </td></tr>
<tr><td> <code>--midi</code> </td><td> parse binary data as a standard MIDI file.</td></tr>
<tr><td> <code>-h</code> </td><td> view help for the program. </td></tr>
</table>


<br/>
<h3> 1. Listing hex bytes and extracting ASCII-character content </h3>

The <em>binasc</em> program can convert a file into an ASCII list of hexadecimal numbers that represent each byte in the input file as well as display any printable ASCII characters associated with the hexadecimal numbers.  The default style for the output is shown below: each line of hexadecimal bytes is followed by a comment line starting with a semi-colon (;) which displays the ASCII character representation for the byte if it is printable.

   `binasc input > output.txt`

<pre><code>
 7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 02 00 03 00 01 00 00 00 ac 
;    E  L  F                                                                

 8c 04 08 34 00 00 00 68 5e 00 00 00 00 00 00 34 00 20 00 05 00 28 00 16 00 
;          4           h  ^                    4                 (          

 15 00 06 00 00 00 34 00 00 00 34 80 04 08 34 80 04 08 a0 00 00 00 a0 00 00 
;                   4           4           4                               

 00 05 00 00 00 04 00 00 00 03 00 00 00 d4 00 00 00 d4 80 04 08 d4 80 04 08 
;                                                                           

 13 00 00 00 13 00 00 00 04 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 00 
;                                                                           

 80 04 08 00 80 04 08 78 5a 00 00 78 5a 00 00 05 00 00 00 00 10 00 00 01 00 
;                      x  Z        x  Z                                     

 00 00 78 5a 00 00 78 ea 04 08 78 ea 04 08 2c 02 00 00 38 03 00 00 06 00 00 
;       x  Z        x           x           ,           8                   

 00 00 10 00 00 02 00 00 00 04 5c 00 00 04 ec 04 08 04 ec 04 08 a0 00 00 00 
;                               \                                           

 a0 00 00 00 06 00 00 00 04 00 00 00 2f 6c 69 62 2f 6c 64 2d 6c 69 6e 75 78 
;                                     /  l  i  b  /  l  d  -  l  i  n  u  x 

 2e 73 6f 2e 32 00 00 25 00 00 00 38 00 00 00 00 00 00 00 0d 00 00 00 20 00 
; .  s  o  .  2        %           8                                        
</code></pre>


The two main viewing options are `-a` and `-b`.  The `-a` option will suppress display of the hex bytes and only show ASCII printable characters.  Printable characters will be separated by a space when one or more intermediate bytes are not printable (or the printable character is a space).  The -a functions similar to the `strings` command-line program available on most unix systems, and is a good way to search for text in a binary file. Here is printable character only output using the same file as in the default style show above:

   `binasc -a input`

<pre><code>
ELF 4 h^ 4 ( 4 4 4 xZ xZ xZ x x , 8 \ /lib/ld-linux.so.2 % 8 # / 5 ! % , "
& 7 $ 6 ) 1 + 0 - 2 3 4 ( ' * . ) p ? ` h E 1 K " ] L " n \ " | " L h U < i
( < > ( 8 @ ( = D > K > e , v 0 , ) E . l I l 3 y E | Q i a C \ | ' | ! !
__gmon_start__ libg++.so.2.7.2 _DYNAMIC _GLOBAL_OFFSET_TABLE_ _init _fini
__builtin_vec_new __builtin_delete __builtin_new __builtin_vec_delete
__ls__7ostreamPCc __ctype_b __ctype_tolower write__7ostreamPCci
get__7istreamRc _vt.3ios _vt.7ostream.3ios __ls__7ostreami cerr exit
__strtod_internal __ls__7ostreamc cout strchr strcmp atexit
libstdc++.so.2.7.2 __11fstreambasei _vt.7istream.3ios _vt.8ifstream.3ios
__11fstreambaseiPCcii open__11fstreambasePCcii _vt.8iostream.3ios
_vt.7fstream.3ios close__11fstreambase _._7fstream _._8ifstream
getline__7istreamPcic read__7istreamPci hex__FR3ios __ls__7ostreaml
endl__FR7ostream libm.so.6 libc.so.6 __libc_init_first bsearch qsort
__strtol_internal strcpy strncpy strtok _environ __environ environ _start
_etext _edata __bss_start _end 1 0 @ h | - ! ( ' , * + ) $ . / % # " & U S
</code></pre>

The width of each text line can be controlled with the `--width` option.  For example, here is the same text wrapped into 40 columns instead of the default of 75 columns:

   `binasc -a --width 40 input`

<pre><code>
ELF 4 h^ 4 ( 4 4 4 xZ xZ xZ x x , 8 \
/lib/ld-linux.so.2 % 8 # / 5 ! % , " & 7
$ 6 ) 1 + 0 - 2 3 4 ( ' * . ) p ? ` h E
1 K " ] L " n \ " | " L h U < i ( < > (
8 @ ( = D > K > e , v 0 , ) E . l I l 3
y E | Q i a C \ | ' | ! !
__gmon_start__ libg++.so.2.7.2 _DYNAMIC
_GLOBAL_OFFSET_TABLE_ _init _fini
__builtin_vec_new __builtin_delete
__builtin_new __builtin_vec_delete
__ls__7ostreamPCc __ctype_b
__ctype_tolower write__7ostreamPCci
get__7istreamRc _vt.3ios
_vt.7ostream.3ios __ls__7ostreami cerr
exit __strtod_internal __ls__7ostreamc
cout strchr strcmp atexit
libstdc++.so.2.7.2 __11fstreambasei
_vt.7istream.3ios _vt.8ifstream.3ios
__11fstreambaseiPCcii
open__11fstreambasePCcii
_vt.8iostream.3ios _vt.7fstream.3ios
close__11fstreambase _._7fstream
_._8ifstream getline__7istreamPcic
read__7istreamPci hex__FR3ios
__ls__7ostreaml endl__FR7ostream
libm.so.6 libc.so.6 __libc_init_first
bsearch qsort __strtol_internal strcpy
strncpy strtok _environ __environ
environ _start _etext _edata __bss_start
_end 1 0 @ h | - ! ( ' , * + ) $ . / % #
" & U S
</code></pre>


Alternately, the `-b` option produces only the hex byte code for each byte in the file (similar to the BSD [http://en.wikipedia.org/wiki/Hexdump hexdump] utility). Unlike the [http://en.wikipedia.org/wiki/Od_(Unix) od] command, bytes are not grouped into two-byte words when displayed as hexadecimal numbers (which will switch order of the bytes in the output display on little-endian computers). Here is example output when using the `-b` option using the same file as in previous examples:

<pre><code>
7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 02 00 03 00 01 00 00 00 ac 
8c 04 08 34 00 00 00 68 5e 00 00 00 00 00 00 34 00 20 00 05 00 28 00 16 00 
15 00 06 00 00 00 34 00 00 00 34 80 04 08 34 80 04 08 a0 00 00 00 a0 00 00 
00 05 00 00 00 04 00 00 00 03 00 00 00 d4 00 00 00 d4 80 04 08 d4 80 04 08 
13 00 00 00 13 00 00 00 04 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 00 
80 04 08 00 80 04 08 78 5a 00 00 78 5a 00 00 05 00 00 00 00 10 00 00 01 00 
00 00 78 5a 00 00 78 ea 04 08 78 ea 04 08 2c 02 00 00 38 03 00 00 06 00 00 
00 00 10 00 00 02 00 00 00 04 5c 00 00 04 ec 04 08 04 ec 04 08 a0 00 00 00 
a0 00 00 00 06 00 00 00 04 00 00 00 2f 6c 69 62 2f 6c 64 2d 6c 69 6e 75 78 
2e 73 6f 2e 32 00 00 25 00 00 00 38 00 00 00 00 00 00 00 0d 00 00 00 20 00 
00 00 15 00 00 00 00 00 00 00 07 00 00 00 0b 00 00 00 23 00 00 00 01 00 00 
00 1d 00 00 00 14 00 00 00 16 00 00 00 0c 00 00 00 00 00 00 00 2f 00 00 00 
0e 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 19 00 00 00 21 00 00 00 1f 
</code></pre>

<h3> 2. Compiling files from hex byte codes </h3>

The <em>binasc</em> program can convert a file containing hex bytes back into actual bytes by using the `-c` option. When using the `-c` option, you must specify an output file after the option flag.  A example use of the `-c` option:

   `binasc input.txt -c output`

The input file can be formatted in a manner similar to the default output of binasc, where comment lines are started with a semi-colon.  The output of <em>binasc</em> when using the `-b` option can also be compiled back into the original file contents.  Additionally, there are several way to insert binary bytes into the output content as described in the sections below.

Note that you can reverse the process of the binasc program to recover the original file content (unless the `-a` option was used):

<pre><code>
   binasc file1 > file2
   binasc file2 -c file3
   ; file1 and file3 should be the same

   binasc -b file1 > file2
   binasc file2 -c file3
   ; file1 and file3 should be the same

   binasc -a file1 > file2
   binasc file2 -c file3         ; this results in an error
</code></pre>

See the [examples] page for example files to compile with the `-c` option.

<h3> 3. Special codes recognized when compiling a binary file </h4>

Besides hex bytes, instructions for inserting binary bytes into the compiled output file include plain characters, multi-byte integers, and floating point numbers.  Additional methods allow for convenient creation of standard MIDI files from a hand-edited text file.  Example parsable tokens

|| *token* || *interpretation when compiling* ||
|| `0a` || the hexadecimal number 0a (decimal value 10) which will be converted to a single byte in the output (which as text would be interpreted as the newline character). ||
|| `a` || the hexadecimal number `0a` without the leading 0. ||
|| `'18` || the decimal number 18 which will be converted into a single byte (equivalent to the hex byte `12`).  Do not try to indicate values greater than `'255` in a single-byte decimal number. ||
|| `2'18` || The decimal value 18 stored in big-endian ordered two-byte group.  Equivalent to "`00 12`" or "`'0 '18`". ||
|| `2u'18` || The decimal value 18 stored in a little-endian ordered two-byte group.  Equivalent to "`12 00`" or "`'18 '0`". ||
|| `3'18` || Equivalent to "`00 00 12`". ||
|| `3u'18` || Equivalent to "`12 00 00`". ||
|| `4'18` || Equivalent to "`00 00 00 12`". ||
|| `4u'18` || Equivalent to "`12 00 00 00`". ||
|| `'-5` || Negative -5 (decimal) representing one byte and using 2's compliment for negative numbers.  Equivalent to the hex byte `FB`. ||
|| `0101,0010` || the binary number `0101,0010` (or `52` hex) which will be converted into a single byte in the output.  The most significant bit is always leftmost bit. ||
|| `0,0` || Equivalent to `0000,0000`. ||
|| `00000000` || Equivalent to `0000,0000`.  (The comma is optional _if_ the binary number has at least three digits (in order to disambiguate with a hex byte). ||
|| `0,1` || Equivalent to `0000,0001`. ||
|| `001` || Equivalent to `0000,0001`. ||
|| `,01` || Invalid: Binary numbers cannot start with a command (this may change in the future). ||
|| `10` || This is the hexadecimal number `10`, not the decimal number `10` or the binary number `10`. ||
|| `9`    || The hexadecimal number `9` which coincidentally is equivalent to the decimal number `9`. ||
|| `1` || The hexadecimal number `1` which coincidentally is equivalent to the decimal number `1` and the binary number `1`. ||
|| `v128` || A Variable Length Value used to store delta times in standard MIDI files. `v128` is equivalent to `81 00`. ||
|| p0.5 || A MIDI pitch-bend data bytes representing 50% above default pitch (which typically a half-step if the range of the pitch bend is set to a wholestep).  This is equivalent to the hex bytes `7f 5f`. || 
|| t120 || A MIDI tempo meta message tempo value.  This will expand to a 3-byte integer representing the duration of quarter note in microseconds. || 

<h4> 3.1 Comments </h4>

A semi-colon (`;`) marks the beginning of a comment which extends to the end of a line. A space (or tab) character must precede the semi-colon when the comment follows a number on a line.

The number/hash sign (`#`) is an equivalent comment character.  This character can be used instead of `;` for comments, or can be dedicated to C preprocessor directives for applying text substitutions before compiling.

<pre><code>
#define SEQ 03 04 05

00 01 02 SEQ
SEQ SEQ
</code></pre>

Running the above code through the C preprocessor gives:

<pre><code>
# 1 "input.txt"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "input.txt"


00 01 02 03 04 05
03 04 05 03 04 05
</code></pre>

Example use of the C preprocessor when compiling a file:

<pre>cpp input.txt | binasc -c output.bin</pre>

A more advanced example that can define the substitution text for `SEQ` externally to the file:

<pre><code>
#ifndef SEQ 
#define SEQ 03 04 05
#endif

00 01 02 SEQ
SEQ SEQ
</code></pre>

<pre>cpp -DSEQ="FF EE DD" input.txt</pre>

<pre><code>
# 1 "input.txt"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "input.txt"




00 01 02 ff ee dd
ff ee dd ff ee dd
</code></pre>


<h4> 3.2 Hexadecimal numbers </h4>

Hexadecimal numbers specify one byte and must contain no more than 2 digits in the range from 00 to ff (0 to 255 decimal, or -128 to 127 as signed decimal values).  The letter digits A-F can be either upper case or lower case.  Examples of valid hexadecimal numbers:
<pre><code>
7f 45 4c 46 1 1 1 0 0 
8c 04 08 34 0 0 0 8 e 
15 00 06 10 0 0 4 0 0 
</code></pre>

<h4> 3.3 Binary numbers </h4>

Binary numbers can be specified by plain numbers longer than three characters or numbers containing (but not starting with) a comma. A binary number is allowed to have up to 8 digits (bits) since a binary number represents one byte in the output file.  An optional comma is expected to split the number into two equal parts with 4 bits on each side of the comma.  If there are fewer then 4 digits on either side of the comma, zeros will be inferred to the left of the given digits for each half (nibble) of the byte.

For example "`0010`" is the binary number which is equal to the decimal number "4". The binary number "`0010`" can also be represented equivalently as "`0,0010`" and "`0000,0010`".   Note that "`10`" is the hexadecimal number equal to the decimal number "`16`" and is _not_ the binary number equal to the decimal number "2".

<h4> 3.4 Decimal numbers (ints and floats) </h4>

Decimal numbers, unlike hexadecimal or binary numbers, can fill slots of 1`-`4 bytes for integers, and 4 or 8 bytes for floating-point decimal numbers. Decimal numbers may also be either positive or negative unlike the hexadecimal or binary number input to <em>binasc</em> compiling.  A decimal number starts with a quote character (') followed by the number with no intervening space. There are two qualifications which can be given just before the quote (in either order):

   * a number in the range from 1 to 4 which specifies how many bytes into which the integer decimal number is to be stored. Floating-point numbers can be either stored in either 4 or 8 bytes. The default size for floating-point numbers is 4 bytes if no prefix size is specified.
   *the symbol "`u`" can be given before the quote character in a decimal number to indicate the sequence order into which the bytes for the number will be placed in the file. No letter "`u`" means that the most significant byte is written first (_big-endian_), while including the prefix letter "`u`" indicates to write the bytes in reverse order with the smallest byte occurring first (_little-endian_).  For example the decimal number 1234 can be represented by the two-byte hexadecimal number 04d2. In big-endian storage the `04` byte is written first, then the `d2` byte. in little-endian storage the `d2` byte is written first then the `04` byte:

|| *decimal* || *hex* || *big endian* || *little endian* ||
|| 1234  || 04d2 || `04 d2` || `d2 04` ||
||           ||          ||  `2'1234` || `2u'1234` ||

When a byte size is not specified before the quote character, the default is 1 for integers.  When not specifying a byte size, valid decimal numbers are in the range from 0 to 255, or `-`128 to 127 if signed, i.e., the range for one-byte decimal numbers is from `-`128 to 255, and you have to know the representation later (signed or unsigned). If you specify a byte size of 1, then you can give any integer number value, but it will be truncated to fit into one byte. The maximum integer decimal number which can fill 4 bytes is 4294967294 or so. (hexadecimal `ff ff ff ff`).

More examples of decimal numbers:

|| *token*  || *decimal #* ||  *hex*||
||    `'0`        ||   0            || `00`||
||   `'255`     ||  255         || `ff`||
||   `'256`     ||   0            || `00` (truncated) ||
||     `2'256`     ||  256         || `01 00` (not truncated)||
|| `4'44100` || 44100      || `00 00 ac 44` (big-endian)||
|| `4u44100` || 44100     || `44 ac 00 00` (little-endian)||
|| `4u'453`   || 453          || `c5 01 00 00` ||
|| `u4'453`   || 453          ||  `c5 01 00 00' (`u4'` is equivalent to `4u'`) ||
|| `2'-5`       || -5              || `ff fb`||
|| `3'500000` || 500000 || `07 a1 20` ||

If a decimal number includes a period character (`.`) it is assumed to be a floating-point number. Floating-point numbers can be either 4 or 8 bytes.

|| *token* || *decimal* || *hex* ||
|| `'3.1415` || 3.1415 || `40 49 0e 56` ||
|| `4'3.1415` || 3.1415 || `40 49 0e 56` ||
|| `u'3.1415` || 3.1415 || `56 0e 49 40` ||
|| `8'3.1415` || 3.1415 || `40 09 21 ca c0 83 12 6f` ||
|| `8u'3.1415` || 3.1415 || `6f 12 83 c0 ca 21 09 40` ||

|| *invalid examples* || *reason* ||
|| `123` || does not start with a quote character ||
|| `'256`|| Exceeds the storage space of one byte (use a multi-byte indication).  in this case, `'256' is equivalent to `1'256` which will truncate to `1'0`, or `00` hex. ||

<h4> 3.5 ASCII characters </h4>

To insert literal ASCII characters into compiled output, precede each character with a plus (`+`). Each character is a separate token.  For example to place the characters "`cat`" into a file, the tokenization would be "`+c +a +t`".

<h4> 3.6 Variable Length Values </h4>

Variable-length values are used to store delta times in standard MIDI files.  They are a form of compression so that small 4-byte integers can be represented by a single byte.  To create a VLV, the bits of a 4-byte integer are grouped into 7-bit pieces.   Any most-significant groupings containing only zeros are ignored (except for the least-significant grouping).  The remaining groups are placed into separate bytes, with the most significant bit of each byte representing a _continuation bit_.  If the continuation bit is "`1`", then there is at least one more byte after the current byte in the file which belongs to the VLV.  If the continuation bite is "`0`", then the current byte is the last byte in the VLV.

To indicate a variable-length value in the input file for compiling with <em>binasc</em>, prefix a decimal number with the letter `v`, such as `v100` which will be translated into `64` hex.  Variable length values can only be used to store up to 4 bytes of an integer.  The resulting VLV will be between 1 to 5 bytes long.

Here are more examples of VLVs:

|| *VLV* || *byte expansion* ||
|| `v0`  || `00` ||
|| `v127` || `7f`||
|| `v128` || `81 00` ||
|| `v123456` || `87 c4 40` ||

<h4> 3.7 MIDI pitch-bend data bytes </h4>

MIDI pitch-bend data bytes contain a 14-bit integer which is split into two 7-bit values stored with the least-significant byte coming first (little-endian).  The minimum value 0 is represented by the two bytes `00 00` and the maximum value is represented by the two bytes `7f 7f`.  The middle of the range is `00 40`.

In the input file used to compile a file with the <em>binasc</em> program, use the letter `p` followed (without space) by a floating-point number in the range from `-`1.0 to +1.0.  The plus sign is optional for positive values, as is any leading zero.  Values outside of the valid range will be truncated to the maximum or minimum value.  

Below are example conversions of pitch-bend tokens into hexadecimal values.  The cents column shows the number of cents deviation from the standard pitch if the default depth of the pitch bend is a whole tone (which it usually is).  If this assumption is true, then `cent = 200 * value`.

|| *pitch bend token* || *hex bytes* || *cents* ||
|| `p0` || `00 40` || 0 ||
|| `p1` or `p+1`|| `7f 7f` || 200 (wholetone) ||
|| `p-1` || `00 00` || `-`200 ||
|| `p0.5` or `p.5`  || `7f 5f` || 100 (semitone) ||
|| `p-.25` || `7f 4f` || `-`50 (quartertone) ||
|| `p-0.3333` || `55 2a` || `-`66.67 ||

<h4> 3.8 MIDI tempo meta message data bytes </h4>

Tempo in a standard MIDI file is given as a three-byte integer representing
the duration of a quarter note in microseconds.  For example a tempo of 
60 beats per minute has one beat per second, and each second is a million 
microseconds, so the tempo 60BPM is represented in a MIDI file as 1000000.

To indicate a tempo in the input data for the `-c` compile process, prefix the letter `t` to a floating-point value.

|| *tempo token* || *decimal form* || *hex bytes* ||
|| `t60`  || `3'1000000`|| `0f 42 40` ||
|| `t120` || `3'500000` || `07 a1 20` ||
|| `t40`  || `3'1500000`|| `16 e3 60` ||
|| `t144` || `3'416667` || `06 5b 9b` ||
|| `t63`  || `3'952381` || `0e 88 3d` ||
|| `t132.45`  || `3'453001` || `06 e9 89` ||

Tempo is given in meta message 51 hex, so here is an example full event in a MIDI file using the `t` marker for tempo

|| `v0 ff 51 03 t120` || `00 ff 51 03 07 a1 20` ||

<h3> 4. Examples </h3>

Example files for compiling with the `-c` option that demonstrate various methods of representing bytes as described above can be found on the [examples] page.  Examples can be downloaded via Mercurial (if installed on your computer) with the command:
     `hg clone https://wiki.binasc.googlecode.com/hg binasc-wiki`
The example compiled files and their companion ASCII files are found in `binasc-wki/files/examples`.


<h3> 5. Downloads </h3>

Compiled versions of <em>binasc</em> are available for [https://code.google.com/p/binasc/downloads/detail?name=binasc.linux Linux], [https://code.google.com/p/binasc/downloads/detail?name=binasc.osx#makechanges OS X] and [https://code.google.com/p/binasc/downloads/detail?name=binasc.exe Windows] on the [https://code.google.com/p/binasc/downloads/list Download page].

Source code can be viewed online [https://code.google.com/p/binasc/source/browse/ here].  To download the source code, click on the _zip_ link on that source-code browse page.  The source code can also be downloaded using the Mercurial repository system (if you have it installed on your computer):
   `hg clone https://code.google.com/p/binasc`

The source code should be easy to compile on linux or OS X by typing:
    `cd binasc; make`
To copy the program to `/usr/bin` type:
    `make install`
To verify that the program is available from the command-line:
    `which binasc`
This command should reply with the path to <em>binasc</em>:
   `/usr/bin/binasc`

