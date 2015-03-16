These examples demonstrate SMPTE delta times. Set the first byte of the MIDI header divisions to a negative frame rate per second (-24, -25, -29, or -30), and set the next byte to the number of subframes per frame.

Examples on this page:
  * [Example 1](#Example_1.md): Basic demonstration of SMPTE delta times.


---

# Example 1 #

---


[[smpte-1.txt](http://wiki.binasc.googlecode.com/hg/files/examples/smpte-1.txt)] [[smpte-1.mid](http://wiki.binasc.googlecode.com/hg/files/examples/smpte-1.mid)]
```
; An example MIDI file using SMPTE divisions.  This form of delta time ticks 
; in a MIDI file is for representing actual time (such as seconds) rather 
; than score time (such as quarter notes).  The two-byte divisions are set 
; to -25 in the first byte and 40 in the second byte.  The negative value 
; means to use SMPTE timing for delta ticks, and 25 is the frame rate per 
; second.  Other valid values are 24 and 30.  29 is also valid, but this 
; actually means 30 drop-frame which is equivalent to 29.97 frames/second 
; on the average (so don't use 29 if you are trying to represent actual time 
; outside of NTSC video contexts).
;
; The case of 25 frames/second and 40 subframes/frame means that every
; delta time unit is equivalent to 1 millisecond.  

+M +T +h +d		; MIDI file header chunk marker
4'6			; bytes in header to follow
2'0			; format: Type-0 (single track)
2'1			; track count: 1 track
'-25 '40		; divisions: SMPTE: 25 frames/sec 40 subframes/frame
                        ;    in other words: 25 * 40 = 1000 ticks per second.

+M +T +r +k		; Track chunk marker
4'315			; number of bytes to follow in the track

; play a note once every second:
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0
v0 90 '60 '100		v1000 80 '60 '0

; play a note twice every second:
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0
v0 90 '60 '100		v500 80 '60 '0
v0 90 '61 '100		v500 80 '61 '0

; tempo meta-message test
v0 90 '62 '100		v1000 80 '62 '0
v0 90 '62 '100		v1000 80 '62 '0
v0 90 '62 '100		v1000 80 '62 '0
v0 90 '62 '100		v1000 80 '62 '0

; Try to set the tempo to 120 bpm. In theory this tempo meta message
; should be ignored, but not all MIDI playback programs will ignore it.
; In any case, avoid using tempo chanes with SMPTE timing.

v0 ff 51 03 3'500000	; each beat is 1/2 of a second long.

; RealPlayer and QuickTim 7 will play these notes at the same rate as 
; the previous four.  Thus the "tempo" is really 60 although the tempo
; meta message was set to 120.

v0 90 '63 '100		v1000 80 '63 '0
v0 90 '63 '100		v1000 80 '63 '0
v0 90 '63 '100		v1000 80 '63 '0
v0 90 '63 '100		v1000 80 '63 '0

v0 ff 51 03 3'250000	; each beat is 1/4 of a second long.

; RealPlayer will play these notes twice as fast as the previous four:
; QuickTime player 7.0 will play these notes twice as fast.

v0 90 '64 '100		v1000 80 '64 '0
v0 90 '64 '100		v1000 80 '64 '0
v0 90 '64 '100		v1000 80 '64 '0
v0 90 '64 '100		v1000 80 '64 '0

00 ff 2f 00

```
