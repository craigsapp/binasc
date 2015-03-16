This example illustrates the [pitch-bend directive](mainpage#3.7_MIDI_pitch-bend_data_bytes.md) "`p`" which _binasc_ uses to generates two-bytes of MIDI data from a single floating-point value. The following three example all produce the same quarter-tone chromatic scale when played in a MIDI player; however, each example realizes a differently structured MIDI file:

  * [Example 1](#Example_1.md): Single track, single channel, pitch bend before each note attack.
  * [Example 2](#Example_2.md): Single track, two channels, one pitch bend for each channel.
  * [Example 3](#Example_3.md): Multiple tracks, two channels, one pitch bend for each channel.

The pitch-bend depth should be set to a wholetone (two half steps or 200 cents).  This is typically the default setting for synthesizers, so this assumption will almost always be true (and if it is not true, then that usually means you know how to change the depth).

These examples can be used to generate a MIDI file performance of quarter-tone music, such as Charles Ives' _3 Quarter-Tone Pieces_ (1924).  Below is a video of a performance of the piece.  One piano is tuned normally while the other is tuned a quarter-tone flat.  This allows 24 notes per octave rather than the 12 notes/octave available on a single piano.  The video on the right demonstrates a two-manual quarter-tone piano.

| <a href='http://www.youtube.com/watch?feature=player_embedded&v=EU85bUyDPWs' target='_blank'><img src='http://img.youtube.com/vi/EU85bUyDPWs/0.jpg' width='425' height=344 /></a> |<a href='http://www.youtube.com/watch?feature=player_embedded&v=PdP4epQIUrU' target='_blank'><img src='http://img.youtube.com/vi/PdP4epQIUrU/0.jpg' width='425' height=344 /></a>|
|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|


---

# Example 1 #

---

The following example starts by playing middle C with a quarter-note duration, then raising the pitch bend to 25% of max (50 cents) and playing the C pitch again (which results in C half-sharp sounding).  Then the pitch bend is reset to the 0 position, and the C-sharp/D-flat key is played. etc.

[[quartertone-1.txt](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-1.txt)] [[quartertone-1.mid](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-1.mid)]
```
; This example MIDI file plays a quarter-tone chromatic scale up an octave --
; 24 unique pitches between middle C and the C an octave higher.  Each note-on
; is preceded by a pitch-bend message to adjust the tuning of that note.
; In this case the pitch bend is either raised up 25% of the maximum value
; or it is set to its default position at zero.  Raising up 25% will result
; in a quarter-tone higher than the original pitch.  Typically the pitchbend
; depth will be a whole tone (200 cents), so 25% maps to 50 cents which is
; an equal-tempered quarter tone.
;
; The 'p' directive used to encode bytes in the data below is a binasc 
; shorthand for mapping the range from -1.0 to +1.0 into a 14-bit integer 
; in the range from 0 to 2^15-1.  This 14-bit number will be split into two 
; 7-bit parts, and the top padding bit will be set to zero (as required for 
; MIDI data bytes).  The order of the bytes is switched so that the least 
; significant byte (LSB) comes first, then the most significant byte (MSB).
;
; Here are example bend-to-hex mappings used in this file:
; (1) Set to default tuning:
;	p0    =>  (2^15-1)/2 (halfway through full range) or in hex: 00 40
;	p0.25 =>  (2^15-1)3/4 (halfway through top half of range) hex: 00 40
;
; -- Craig Sapp 2012/01/31

+M +T +h +d	; MIDI file header chunk
4'6		; number of bytes in header chunk to follow
2'0		; format (Type-0)
2'1		; number of tracks (1)
2'100		; ticks per quarter note

+M +T +r +k	; track chunk
4'311		; number of bytes to follow in track chunk

v0 ff 58 03 3'500000		; tempo: one beat is 500000 microseconds
v0 c0 '19			; timbre: (General MIDI) organ

v0 90 '60 '127	v100 90 '60 '0	; Middle C

v0 e0 p.25			; pitch bend at +25% (50 cents, quarter tone up)
v0 90 '60 '127	v100 90 '60 '0	; C quarter-sharp

v0 e0 p0			; pitch bend at +0%
v0 90 '61 '127	v100 90 '61 '0	; C sharp (D flat)

v0 e0 p.25			; pitch bend at +25% 
v0 90 '61 '127	v100 90 '61 '0	; C 3/2-sharp (D 1/2-flat)

v0 e0 p0  			; pitch bend at +0% 
v0 90 '62 '127	v100 90 '62 '0	; D

v0 e0 p.25			; pitch bend at +25% 
v0 90 '62 '127	v100 90 '62 '0	; D 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '63 '127	v100 90 '63 '0	; D sharp

v0 e0 p.25			; pitch bend at +25% 
v0 90 '63 '127	v100 90 '63 '0	; D 3/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '64 '127	v100 90 '64 '0	; E

v0 e0 p.25			; pitch bend at +25% 
v0 90 '64 '127	v100 90 '64 '0	; E 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '65 '127	v100 90 '65 '0	; F

v0 e0 p.25			; pitch bend at +25% 
v0 90 '65 '127	v100 90 '65 '0	; F 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '66 '127	v100 90 '66 '0	; F sharp

v0 e0 p.25			; pitch bend at +25% 
v0 90 '66 '127	v100 90 '66 '0	; F 3/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '67 '127	v100 90 '67 '0	; G

v0 e0 p.25			; pitch bend at +25% 
v0 90 '67 '127	v100 90 '67 '0	; G 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '68 '127	v100 90 '68 '0	; G sharp

v0 e0 p.25			; pitch bend at +25% 
v0 90 '68 '127	v100 90 '68 '0	; G 3/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '69 '127	v100 90 '69 '0	; A

v0 e0 p.25			; pitch bend at +25% 
v0 90 '69 '127	v100 90 '69 '0	; A 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '70 '127	v100 90 '70 '0	; A sharp

v0 e0 p.25			; pitch bend at +25% 
v0 90 '70 '127	v100 90 '70 '0	; A 3/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '71 '127	v100 90 '71 '0	; B

v0 e0 p.25			; pitch bend at +25% 
v0 90 '71 '127	v100 90 '71 '0	; B 1/2-sharp

v0 e0 p0  			; pitch bend at +0% 
v0 90 '72 '127	v200 90 '72 '0	; C

00 ff 2f 00	; required end-of-track meta message
```


---

# Example 2 #

---


Note in the previous example that a very short pitch glissando might be audible between notes.  Here is an alternate method using multiple channels which can fix this problem.  Channel 1 is used for normally tuned pitches, and channel 2 is used for quarter-tone transposed notes.  Since each channel is set to a different fixed transposition, the notes cannot glissando into each other.

[[quartertone-2.txt](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-2.txt)] [[quartertone-2.mid](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-2.mid)]
```
; Chromatic scale using two channels.  Channel 1 is used for pitches
; with normal tuning, and channel 2 is used for pitches tuned up a
; quarter tone.

+M +T +h +d	; MIDI file header chunk
4'6		; number of bytes in header chunk to follow
2'0		; format (Type-0)
2'1		; number of tracks (1)
2'100		; ticks per quarter note

+M +T +r +k	; track chunk
4'226		; number of bytes to follow in track chunk

v0 ff 58 03 3'500000		; tempo: one beat is 500000 microseconds
v0 c0 '19			; channel 1 timbre: organ
v0 c1 '19			; channel 2 timbre: organ
v0 e0 p0			; 0% pitch-bend depth for channel 1
v0 e1 p.25			; 25% pitch-bend depth for channel 2 (50 cents)

v0 90 '60 '127	v100 90 '60 '0	; Middle C
v0 91 '60 '127	v100 91 '60 '0	; C quarter-sharp
v0 90 '61 '127	v100 90 '61 '0	; C sharp (D flat)
v0 91 '61 '127	v100 91 '61 '0	; C 3/2-sharp (D 1/2-flat)
v0 90 '62 '127	v100 90 '62 '0	; D
v0 91 '62 '127	v100 91 '62 '0	; D 1/2-sharp
v0 90 '63 '127	v100 90 '63 '0	; D sharp
v0 91 '63 '127	v100 91 '63 '0	; D 3/2-sharp
v0 90 '64 '127	v100 90 '64 '0	; E
v0 91 '64 '127	v100 91 '64 '0	; E 1/2-sharp
v0 90 '65 '127	v100 90 '65 '0	; F
v0 91 '65 '127	v100 91 '65 '0	; F 1/2-sharp
v0 90 '66 '127	v100 90 '66 '0	; F sharp
v0 91 '66 '127	v100 91 '66 '0	; F 3/2-sharp
v0 90 '67 '127	v100 90 '67 '0	; G
v0 91 '67 '127	v100 91 '67 '0	; G 1/2-sharp
v0 90 '68 '127	v100 90 '68 '0	; G sharp
v0 91 '68 '127	v100 91 '68 '0	; G 3/2-sharp
v0 90 '69 '127	v100 90 '69 '0	; A
v0 91 '69 '127	v100 91 '69 '0	; A 1/2-sharp
v0 90 '70 '127	v100 90 '70 '0	; A sharp
v0 91 '70 '127	v100 91 '70 '0	; A 3/2-sharp
v0 90 '71 '127	v100 90 '71 '0	; B
v0 91 '71 '127	v100 91 '71 '0	; B 1/2-sharp
v0 90 '72 '127	v200 90 '72 '0	; C

00 ff 2f 00	; required end-of-track meta message
```


---

# Example 3 #

---

And here is a third example which splits the two channels into separate tracks.  This arrangement of the notes is analogous to the Charles Ives' composition mentioned above, where the are two pianists: one playing a normally tuned piano, and the other playing a piano tuned up a quarter tone. There are three tracks in this Type-1 MIDI file.  The first one (track 0) is used to store messages intended to apply to all tracks (such as the example tempo message).  Track 1 plays all of the pitches in regular intonation, and track 2 plays all of the pitches which are transposed up a quarter tone.

[[quartertone-3.txt](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-3.txt)] [[quartertone-3.mid](http://wiki.binasc.googlecode.com/hg/files/examples/quartertone-3.mid)]
```
; Chromatic scale using two channels in separate tracks.  Channel 1 
; is used for pitches with normal tuning, and channel 2 is used for
; pitches tuned up a quarter tone.

+M +T +h +d	; MIDI file header chunk
4'6		; number of bytes in header chunk to follow
2'1		; format (Type-0)
2'3		; number of tracks (3)
2'100		; ticks per quarter note

; Track 0: tempo map
+M +T +r +k	; track chunk marker
4'11		; number of bytes to follow in track chunk
v0 ff 58 03 3'500000		; tempo: one beat is 500000 microseconds
00 ff 2f 00

; Track 1: unaltered notes
+M +T +r +k	; track chunk marker
4'116		; number of bytes to follow in track chunk
v0   c0 '19	; channel 1 timbre: organ
v0   e0 p0	; 0% pitch-bend depth for channel 1
v0   90 '60 '127	v100 90 '60 '0	; Middle C
v100 90 '61 '127	v100 90 '61 '0	; C sharp (D flat)
v100 90 '62 '127	v100 90 '62 '0	; D
v100 90 '63 '127	v100 90 '63 '0	; D sharp
v100 90 '64 '127	v100 90 '64 '0	; E
v100 90 '65 '127	v100 90 '65 '0	; F
v100 90 '66 '127	v100 90 '66 '0	; F sharp
v100 90 '67 '127	v100 90 '67 '0	; G
v100 90 '68 '127	v100 90 '68 '0	; G sharp
v100 90 '69 '127	v100 90 '69 '0	; A
v100 90 '70 '127	v100 90 '70 '0	; A sharp
v100 90 '71 '127	v100 90 '71 '0	; B
v100 90 '72 '127	v200 90 '72 '0	; C
00 ff 2f 00

; Track 2: quarter-tone notes
+M +T +r +k	; track chunk marker
4'107		; number of bytes to follow in track chunk
v0 c1 '19	; channel 2 timbre: organ
v0 e1 p.25	; 25% pitch-bend depth for channel 2 (50 cents)
v100 91 '60 '127	v100 91 '60 '0	; C quarter-sharp
v100 91 '61 '127	v100 91 '61 '0	; C 3/2-sharp (D 1/2-flat)
v100 91 '62 '127	v100 91 '62 '0	; D 1/2-sharp
v100 91 '63 '127	v100 91 '63 '0	; D 3/2-sharp
v100 91 '64 '127	v100 91 '64 '0	; E 1/2-sharp
v100 91 '65 '127	v100 91 '65 '0	; F 1/2-sharp
v100 91 '66 '127	v100 91 '66 '0	; F 3/2-sharp
v100 91 '67 '127	v100 91 '67 '0	; G 1/2-sharp
v100 91 '68 '127	v100 91 '68 '0	; G 3/2-sharp
v100 91 '69 '127	v100 91 '69 '0	; A 1/2-sharp
v100 91 '70 '127	v100 91 '70 '0	; A 3/2-sharp
v100 91 '71 '127	v100 91 '71 '0	; B 1/2-sharp
00 ff 2f 00
```
