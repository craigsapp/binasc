Use the command-line invocation:
> `binasc example.txt -c example.snd`
to convert this example into a NeXT/Sun soundfile.  This example has five zero-valued samples, with each sample being 2 bytes (16-bits).

```
2e 73 6e 64      ; the magic number which identifies the type of the file
; .  s  n  d      ; character equivalents of the magic number digits


00 00 00 32       ; the byte offset of the data (50 bytes precede the data)
                  ; i.e., the header contains 50 bytes

00 00 00 0a       ; the number of bytes in the data (10 bytes).

00 00 00 03       ; the NeXT/sun data format (3 = 16-bit Linear sound)

00 00 ac 44       ; the sampling rage, which is 44100 samples/sec here

00 00 00 01       ; the number of channels (1 = monophonic soundfile)

                  ; next comes a soundfile comment:
 54 68 69 73 20 69 73 20 61 20 62 6c 61 6e 6b 20 73 6f 75 6e 64 66 69 6c 65 2e
; T  h  i  s     i  s     a     b  l  a  n  k     s  o  u  n  d  f  i  l  e  .

; finally the individual sample data:

00 00       ; first 16-bit sample (big-endian)
00 00       ; second 16-bit sample (big-endian)
00 00       ; third 16-bit sample (big-endian)
00 00       ; fourth 16-bit sample (big-endian)
00 00       ; fifth 16-bit sample (big-endian)

; end of example soundfile.
```


Here is the same soundfile represented in a more human-readable format:

```
+. +s +n +d      ; magic number (characters ".snd")
4'50             ; header bytes (the decimal number 50 filling 4 bytes)
4'10             ; sample count
4'3              ; format
4'44100          ; srate
4'1              ; channels
                 ; comment:
+T +h +i +s +  +i +s +  +a +  +b +l +a +n +k +  +s +o +u +n +d +f +i +l +e +.

                 ; sample data shown in various input possibilities
00 00            ; sample 1: hexadecimal digits
'0 '0            ; sample 2: decimal digits
2'0              ; sample 3: decimal number 0 filling up two bytes
0000,0000 0,0    ; sample 4: binary digits
2u'0             ; sample 5: decimal digits filling two bytes, but
                 ; using little endian byte ordering (backward).
; end of example soundfile.
```

And here is the same file listed purely as hex bytes:

```
2e 73 6e 64 00 00 00 32 00 00 00 0a 00 00 00 03 00 00 ac 44 00 00 00 01 
54 68 69 73 20 69 73 20 61 20 62 6c 61 6e 6b 20 73 6f 75 6e 64 66 69 6c 
65 2e 00 00 00 00 00 00 00 00 00 00 
```


