These examples demonstrate polyrhythmic patterns using General MIDI
percussion timbers on channel 10.

Examples on this page:
  * [Example 1](#Example_1.md): Two against three pattern in a Type-0 MIDI file.
  * [Example 2](#Example_2.md): Two against three pattern in a Type-1 MIDI file.
  * [Example 3](#Example_3.md): Four against three polyrhythm.
  * [Example 4](#Example_4.md): Five against three polyrhythm.
  * [Example 5](#Example_5.md): 2+7 against 3+5 polyrhythm.
  * [Example 6](#Example_6.md): 9:11:13 triple polyrhythm.
  * [Example 7](#Example_7.md): 24:25 polyrhythm.


---

# Example 1 #

---


[[polyrhythm-1.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-1.txt)] [[polyrhythm-1.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-1.mid)]
```
; a Two-against-three polyrhythmic pattern.  On percussion part plays
; two strokes per beat while another play three strokes per beat.  In 
; This Type-0 MIDI file interleaves the parts into a single stream
; of notes, so it is difficult to see the pattern in the 
;

+M +T +h +d	; MIDI file header chunk marker
4'6		; byte count in header chunk to follow
2'0		; file format (Type-0: single track file)
2'1		; one track in file
2'6		; ticks per quarter note


+M +T +r +k	; track chunk marker
4'223		; byte count in track chunk to follow

v0 ff 51 03 3'1000000	; tempo: one beat is 1000000 microseconds

; Two against three rhythm with voices interleaved in a single track.
; Pattern repeated ten times. 

; first beat
v0 99 '47 '100
v0 99 '48 '100
v2 99 '47 '100
v1 99 '48 '100
v1 99 '47 '100

; nine more beats, one per line
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100
v2 99 '47 '100 v0 99 '48 '100 v2 99 '47 '100 v1 99 '48 '100 v1 99 '47 '100

; end at the conjunction of the two patterns on a beat
v2 99 '47 '100 v0 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v6 99 0 0
v0 ff 2f 00
```



---

# Example 2 #

---


[[polyrhythm-2.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-2.txt)] [[polyrhythm-2.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-2.mid)]
```
; Another two-against-three polyrhythm.  In this case the two rhythmic
; components are separated into separate tracks.  This allows each 
; delta time in the track to be a constant.  Since the beat is 6 ticks
; long, two strokes per beat will occur every 3 ticks.  Three strokes
; per beat will occur every 2 ticks.

+M +T +h +d	; MIDI file header chunk marker
4'6		; byte count in header chunk to follow
2'1		; file format (Type-1: multi-track file)
2'3		; one track in file
2'6		; ticks per quarter note


; Track 0: tempo track
+M +T +r +k	; track chunk marker
4'11		; byte count in track chunk to follow
v0 ff 51 03 3'1000000	; tempo: one beat is 1000000 microseconds
v0 ff 2f 00


; Track 1 plays a pattern every eighth note (twice a beat)
+M +T +r +k	; track chunk marker
4'92		; byte count in track chunk to follow

v0 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100
v3 99 '47 '100

v3 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v6 99 '47 '0

v0 ff 2f 00


; Track 2 plays a pattern every triplet eighth note (three times a beat)
+M +T +r +k	; track chunk marker
4'132		; byte count in track chunk to follow

v0 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100
v2 99 '48 '100
v2 99 '48 '100

v2 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v6 99 '48 '0

v0 ff 2f 00
```



---

# Example 3 #

---


[[polyrhythm-3.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-3.txt)] [[polyrhythm-3.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-3.mid)]
```
; 4:3 polyrhythmic pattern. One part playing every 4 ticks and the 
; other playing every 3 ticks.  Pattern is repeated 10 times
; and ends at the downbeat of the 11th cycle.

+M +T +h +d		; MIDI file header chunk marker
4'6			; byte count in header chunk to follow
2'1			; file format (Type-1: multi-track file)
2'3			; three tracks in file
2'6			; ticks per quarter note


; Track 0 is the tempo track
+M +T +r +k		; track chunk marker
4'11			; byte count in track chunk to follow
v0 ff 51 03 3'800000 	; tempo: one beat is 800000 microseconds
v0 ff 2f 00


; Track 1 plays a note every three ticks.
+M +T +r +k	; track chunk marker
4'132		; byte count in track chunk to follow

v0 99 '47 '100
v4 99 '47 '100
v4 99 '47 '100

v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100
v4 99 '47 '100 v4 99 '47 '100 v4 99 '47 '100

v4 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v4 99 '47 '0

v0 ff 2f 00


; Track 2 plays a pattern every triplet eighth note (three times a beat)
+M +T +r +k	; track chunk marker
4'172		; byte count in track chunk to follow

v0 99 '48 '100
v3 99 '48 '100
v3 99 '48 '100
v3 99 '48 '100

v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100

v3 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v3 99 '48 '0

v0 ff 2f 00
```


---

# Example 4 #

---


[[polyrhythm-4.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-4.txt)] [[polyrhythm-4.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-4.mid)]
```
; 3:5 polyrhythmic pattern. One part playing every 3 ticks and the 
; other playing every 5 ticks.  Pattern is repeated 10 times
; and ends at the downbeat of the 11th cycle.

+M +T +h +d		; MIDI file header chunk marker
4'6			; byte count in header chunk to follow
2'1			; file format (Type-1: multi-track file)
2'3			; three tracks in file
2'15			; ticks per quarter note


; Track 0 is the tempo track
+M +T +r +k		; track chunk marker
4'11			; byte count in track chunk to follow
v0 ff 51 03 3'2200000 	; tempo: one beat is 1200000 microseconds
v0 ff 2f 00


; Track 1 plays a note every three ticks.
+M +T +r +k	; track chunk marker
4'132		; byte count in track chunk to follow

v0 99 '47 '100
v5 99 '47 '100
v5 99 '47 '100

v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100
v5 99 '47 '100 v5 99 '47 '100 v5 99 '47 '100

v5 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v5 99 '47 '0

v0 ff 2f 00


; Track 2 plays a pattern every triplet eighth note (three times a beat)
+M +T +r +k	; track chunk marker
4'212		; byte count in track chunk to follow

v0 99 '48 '100
v3 99 '48 '100
v3 99 '48 '100
v3 99 '48 '100
v3 99 '48 '100

v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100
v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100 v3 99 '48 '100

v3 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v3 99 '48 '0

v0 ff 2f 00
```



---

# Example 5 #

---


[[polyrhythm-5.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-5.txt)] [[polyrhythm-5.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-5.mid)]
```
; 2/7:3/5 polyrhythmic pattern. One part alternates playing 2 then 7
; durations, while the other plays every 3 then 5 units of time.
; Pattern is repeated 10 times and ends at the downbeat of the 11th cycle.

+M +T +h +d		; MIDI file header chunk marker
4'6			; byte count in header chunk to follow
2'1			; file format (Type-0: multi-track file)
2'3			; three tracks in file
2'15			; ticks per quarter note

; Track 0 is the tempo track
+M +T +r +k		; track chunk marker
4'11			; byte count in track chunk to follow
v0 ff 51 03 3'2200000 	; tempo: one beat is 1200000 microseconds
v0 ff 2f 00


; Track 1 plays a note every two then seven ticks.
+M +T +r +k	; track chunk marker
4'652		; byte count in track chunk to follow

v0 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100
v2 99 '47 '100 v7 99 '47 '100

v2 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v2 99 '47 '0

v0 ff 2f 00


; Track 2 plays a pattern every triplet eighth note (three times a beat)
+M +T +r +k	; track chunk marker
4'732		; byte count in track chunk to follow

v0 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100
v3 99 '48 '100 v5 99 '48 '100

v3 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v3 99 '48 '0

v0 ff 2f 00
```


---

# Example 6 #

---


[[polyrhythm-6.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-6.txt)] [[polyrhythm-6.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-6.mid)]
```
; 9:11:13 polyrhythmic pattern. One part plyas every 9 ticks, another 11 and
; a third 13 ticks.
; Pattern played once.

+M +T +h +d		; MIDI file header chunk marker
4'6			; byte count in header chunk to follow
2'1			; file format (Type-1: multi-track file)
2'4			; four tracks (tempo, plus one for each part)
2'15			; ticks per quarter note


; Track 0 is the tempo track
+M +T +r +k		; track chunk marker
4'11			; byte count in track chunk to follow
v0 ff 51 03 3'800000 	; tempo: one beat is 800000 microseconds
v0 ff 2f 00


; Track 1 plays a note every 9 ticks.  11*13+1 = 144 notes total.
+M +T +r +k	; track chunk marker
4'584		; byte count in track chunk to follow

v0 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100
v9 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v2 99 '47 '0

v0 ff 2f 00


; Track 2 plays a note every 11 ticks.  9*13+1 = 118 notes total.
+M +T +r +k	; track chunk marker
4'480		; byte count in track chunk to follow

v0  99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100
v11 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v3 99 '48 '0

v0 ff 2f 00


; Track 3 plays a note every 13 ticks.  9*11+1 = 100 notes total.
+M +T +r +k	; track chunk marker
4'408		; byte count in track chunk to follow

v0  99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100
v13 99 '45 '100

; add a fake note-off to prevent MIDI players from clipping last note
v3 99 '45 '0

v0 ff 2f 00
```


---

# Example 7 #

---


[[polyrhythm-7.txt](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-7.txt)] [[polyrhythm-7.mid](http://wiki.binasc.googlecode.com/hg/files/examples/polyrhythm-7.mid)]
```
; 24:25 polyrhythm (winshield wipers).  Pattern is repeated 10 times and 
; ends at the start of the 11th cycle.

+M +T +h +d		; MIDI file header chunk marker
4'6			; byte count in header chunk to follow
2'1			; file format (Type-1: multi track file)
2'3			; one part in each track (plus tempo track)
2'15			; ticks per quarter note

; Track 0 is the tempo track
+M +T +r +k		; track chunk marker
4'11			; byte count in track chunk to follow
v0 ff 51 03 3'200000 	; tempo: one beat is 100000 microseconds
v0 ff 2f 00


; Track 1 plays a note every 24 ticks.
+M +T +r +k	; track chunk marker
4'1012		; byte count in track chunk to follow

v0  99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 
v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 v25 99 '47 '100 

v25 99 '47 '100

; add a fake note-off to prevent MIDI players from clipping last note:
v25 99 '47 '0

v0 ff 2f 00


; Track 2 plays a note every 25 ticks.
+M +T +r +k	; track chunk marker
4'972		; byte count in track chunk to follow

v0  99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100
v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100 v24 99 '48 '100

v24 99 '48 '100

; add a fake note-off to prevent MIDI players from clipping last note
v24 99 '48 '0

v0 ff 2f 00
```