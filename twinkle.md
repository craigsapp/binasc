This set of examples illustrates how to create standard MIDI files with _binasc_, using the `-c` option:
> `binasc input.txt -c output.mid`
You can copy and paste or download each example from a `.txt` link at the top of the example code.  The `.mid` link contains the MIDI file result after compiling the text file with _binasc_.

Examples on this page:
  * [Example 1](#Example_1.md): Lowest level representation using only hex bytes.
  * [Example 2](#Example_2.md): Slightly higher-level representation with full commentary.
  * [Example 3](#Example_3.md): Demonstration of how to use the VLV 'v' prefix for event delta times.


---

# Example 1 #

---


Here are the hex bytes for a simple melody in a standard MIDI file:

[[twinkle-1.txt](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-1.txt)] [[twinkle-1.mid](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-1.mid)]
```
 4d 54 68 64 00 00 00 06 00 00 00 01 00 80 4d 54 72 6b 00 00 00 8c 00 ff 58 
 04 04 02 30 08 00 ff 59 02 00 00 00 90 3c 28 81 00 90 3c 00 00 90 3c 1e 81 
 00 90 3c 00 00 90 43 2d 81 00 90 43 00 00 90 43 32 81 00 90 43 00 00 90 45 
 2d 81 00 90 45 00 00 90 45 32 81 00 90 45 00 00 90 43 23 82 00 90 43 00 00 
 90 41 32 81 00 90 41 00 00 90 41 2d 81 00 90 41 00 00 90 40 32 40 90 40 00 
 40 90 40 28 40 90 40 00 40 90 3e 2d 40 90 3e 00 40 90 3e 32 40 90 3e 00 40 
 90 3c 1e 82 00 90 3c 00 00 ff 2f 00
```


---

# Example 2 #

---


Here is a more human-readable form which will be complied into the same content as the above example:

[[twinkle-2.txt](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-2.txt)] [[twinkle-2.mid](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-2.mid)]
```
;;
;; This file is in the binasc representation so that
;; it can be compiled into a binary standard MIDI file
;; with the following command:
;;
;;    binasc filename -c twinkle.mid
;;
;; where filename is the name of this file.
;;
;; Hexadecimal numbers are plain two-digit numbers.
;; Decimal numbers start with a quote (').
;; The byte size of decimal number can be specified with a size
;; that comes before the quote of a decimal number.
;; Characters start with a plus sign (+).
;;
;; -- Craig Stuart Sapp <craig@ccrma.stanford.edu>
;;    Wed Jan 13 21:00:05 PST 1999
;;
;;

; Standard Midi File Header Chunk

+M +T +h +d         ; the Chunk ID
4'6                 ; the data size of the header chunk data (next three fields)

; header data:
2'0                 ; the format
2'1                 ; the number of track chunks that follow
2'128               ; ticks per quarter-note

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; The track Chunk

+M +T +r +k         ; the Chunk ID
4'140               ; the data size of the header chunk data 
                    ; (144 bytes to follow)

; track data:
0                   ; a delta time

   ff 58 04         ; start of time signature meta event 4 more bytes expected
   04 02            ; the key signature 4/4  (4 / 2^2)
   '48              ; 48 clock ticks per quarter note
   8                ; 8 32nd notes per quarter note
   
0
   ff 59 02         ; key signature meta event
   0                ; no sharps or flats
   0                ; major key (therefore C major)

; play some notes:

0                   ;
   90 '60 '40       ; C4 note-on (quarter note)
81 0                ; delta time (128 ticks) given as a VLV
   90 '60 0         ; C4 note-off

0                   ;
   90 '60 '30       ; C4 note-on 
81 0                ; 
   90 '60 0         ; C4 note-off 

0
   90 '67 '45       ; G4 note-on 
81 0                ; 
   90 '67 0         ; G4 note-off 

0
   90 '67 '50       ; G4 note-on 
81 0                ; 
   90 '67 0         ; G4 note-off 

0
   90 '69 '45       ; A4 note-on 
81 0                ; 
   90 '69 0         ; A4 note-off 

0
   90 '69 '50       ; A4 note-on 
81 0                ; 
   90 '69 0         ; A4 note-off 

0
   90 '67 '35       ; G4 note-on 
82 0                ;  delta time (256 ticks) given as a VLV
   90 '67 0         ; G4 note-off 

0
   90 '65 '50       ; F4 note-on 
81 0                ; 
   90 '65 0         ; F4 note-off 

0
   90 '65 '45       ; F4 note-on 
81 0                ; 
   90 '65 0         ; F4 note-off 

0
   90 '64 '50       ; E4 note-on 
40                     ;  delta time (64 ticks) given as a VLV
   90 '64 0         ; E4 note-off 

40
   90 '64 '40       ; E4 note-on 
40
   90 '64 0         ; E4 note-off 

40
   90 '62 '45       ; D4 note-on 
40
   90 '62 0         ; D4 note-off 

40
   90 '62 '50       ; D4 note-on 
40
   90 '62 0         ; D4 note-off 

40
   90 '60 '30       ; C4 note-on 
82 0                ; 
   90 '60 0         ; C4 note-off 

0
   ff 2f 00         ; end-of-track meta event (NOT optional)
```


---

# Example 3 #

---


Here is an example which yields the same compiled output, but utilizes VLV codes so that the delta times can be displayed meaningfully in decimal format:

[[twinkle-3.txt](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-3.txt)] [[twinkle-3.mid](http://wiki.binasc.googlecode.com/hg/files/examples/twinkle-3.mid)]
```
; Standard Midi File Header Chunk
+M +T +h +d         ; the Chunk ID
4'6                 ; the data size of the header chunk data (next three fields)
; header parameters
2'0                 ; the format
2'1                 ; the number of track chunks that follow
2'128               ; ticks per quarter-note

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Track Chunk
;

+M +T +r +k         ; the Chunk ID
4'140               ; the data size of the header chunk data
                    ; (144 bytes to follow)

; track data:
0                   ; a delta time
   ff 58 04         ; start of time signature meta event 4 more bytes expected
   04 02            ; the key signature 4/4  (4 / 2^2)
   '48              ; 48 clock ticks per quarter note
   8                ; 8 32nd notes per quarter note

0
   ff 59 02         ; key signature meta event
   0                ; no sharps or flats
   0                ; major key (therefore C major)

; play some notes:

0                   ;
   90 '60 '40       ; C4 note-on (quarter note)
81 0                ; delta time (128 ticks) given as a VLV
   90 '60 0         ; C4 note-off

; variable-length values for delta times below represented in 
; decimal format by prefixing with "v"


v0      90 '60 '30      v128    90 '60 0         ; C4 note on/off
v0      90 '67 '45      v128    90 '67 0         ; G4 note on/off
v0      90 '67 '50      v128    90 '67 0         ; G4 note on/off
v0      90 '69 '45      v128    90 '69 0         ; A4 note on/off
v0      90 '69 '50      v128    90 '69 0         ; A4 note on/off
v0      90 '67 '35      v256    90 '67 0         ; G4 note on/off
v0      90 '65 '50      v128    90 '65 0         ; F4 note on/off
v0      90 '65 '45      v128    90 '65 0         ; F4 note on/off
v0      90 '64 '50      v64     90 '64 0         ; E4 note on/off
v64     90 '64 '40      v64     90 '64 0         ; E4 note on/off
v64     90 '62 '45      v64     90 '62 0         ; D4 note on/off
v64     90 '62 '50      v64     90 '62 0         ; D4 note on/off
v64     90 '60 '30      v256    90 '60 0         ; C4 note on/off

v0      ff 2f 00         ; end-of-track meta event (NOT optional)
```