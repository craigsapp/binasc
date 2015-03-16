These examples demonstrate both pitch and amplitude vibratos.

Examples on this page:
  * [Example 1](#Example_1.md): 7 Hz pitch vibrato for 4 seconds.
  * [Example 2](#Example_2.md): 7 Hz amplitude vibrato for 4 seconds.
  * [Example 3](#Example_3.md): Guitar glissando


---

# Example 1 #

---


Pitch vibrato for 4 seconds at 7 Hz with a 25 cent maximum depth at 2.25 seconds:
<table width='100%'>
<blockquote><tr>
<blockquote><td align='center'>
<blockquote><img src='http://wiki.binasc.googlecode.com/hg/files/images/pitchvibrato.svg' />
</blockquote></td>
</blockquote></tr>
</table></blockquote>

In the resulting MIDI file, the pitch-bend wheel is updated once every
10 milliseconds.

[[vibrato-1.txt](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-1.txt)] [[vibrato-1.mid](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-1.mid)]
```
; Pitch vibrato of 7 Hz for 4 seconds up to 25 cents deviation (around 
; 2.25 seconds). delta time unit is equivalent to 1 millisecond (using SMPTE).

+M +T +h +d		; MIDI file header chunk marker
4'6			; bytes in header to follow
2'0			; format: Type-0 (single track)
2'1			; track count: 1 track
'-25 '40		; divisions: SMPTE: 25 frames/sec 40 subframes/frame
                        ;    in other words: 25 * 40 = 1000 ticks per second.

+M +T +r +k		; Track chunk marker
4'1820			; number of bytes to follow in the track

v0 c0 '19		; General MIDI organ timbre
v0 90 '60 '100		; play a note (Middle C)

; now update the pitch every 10 milliseconds
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p0
v10 e0 p0
v10 e0 p0.0008
v10 e0 p0.0012
v10 e0 p0.0016
v10 e0 p0.0016
v10 e0 p0.0016
v10 e0 p0.0012
v10 e0 p0.0008
v10 e0 p0
v10 e0 p-0.0012
v10 e0 p-0.0024
v10 e0 p-0.0032
v10 e0 p-0.0036
v10 e0 p-0.0036
v10 e0 p-0.0032
v10 e0 p-0.002
v10 e0 p-0.0004
v10 e0 p0.0016
v10 e0 p0.0036
v10 e0 p0.0052
v10 e0 p0.0064
v10 e0 p0.0068
v10 e0 p0.006
v10 e0 p0.004
v10 e0 p0.0016
v10 e0 p-0.0016
v10 e0 p-0.0048
v10 e0 p-0.0076
v10 e0 p-0.0096
v10 e0 p-0.0104
v10 e0 p-0.0096
v10 e0 p-0.0072
v10 e0 p-0.0036
v10 e0 p0.0008
v10 e0 p0.0056
v10 e0 p0.01
v10 e0 p0.0132
v10 e0 p0.0148
v10 e0 p0.014
v10 e0 p0.0116
v10 e0 p0.0068
v10 e0 p0.0012
v10 e0 p-0.0056
v10 e0 p-0.0116
v10 e0 p-0.0164
v10 e0 p-0.0192
v10 e0 p-0.0196
v10 e0 p-0.0168
v10 e0 p-0.0116
v10 e0 p-0.004
v10 e0 p0.0044
v10 e0 p0.0124
v10 e0 p0.0196
v10 e0 p0.024
v10 e0 p0.0252
v10 e0 p0.0228
v10 e0 p0.0172
v10 e0 p0.0084
v10 e0 p-0.0016
v10 e0 p-0.0124
v10 e0 p-0.0216
v10 e0 p-0.0284
v10 e0 p-0.0312
v10 e0 p-0.0296
v10 e0 p-0.024
v10 e0 p-0.0144
v10 e0 p-0.002
v10 e0 p0.0108
v10 e0 p0.0228
v10 e0 p0.032
v10 e0 p0.0372
v10 e0 p0.0372
v10 e0 p0.0316
v10 e0 p0.0212
v10 e0 p0.0076
v10 e0 p-0.0076
v10 e0 p-0.0228
v10 e0 p-0.0348
v10 e0 p-0.0428
v10 e0 p-0.0444
v10 e0 p-0.04
v10 e0 p-0.0296
v10 e0 p-0.0148
v10 e0 p0.0032
v10 e0 p0.0208
v10 e0 p0.0364
v10 e0 p0.0472
v10 e0 p0.0516
v10 e0 p0.0488
v10 e0 p0.0388
v10 e0 p0.0232
v10 e0 p0.0036
v10 e0 p-0.0172
v10 e0 p-0.0364
v10 e0 p-0.0504
v10 e0 p-0.058
v10 e0 p-0.0576
v10 e0 p-0.0488
v10 e0 p-0.0328
v10 e0 p-0.0116
v10 e0 p0.0116
v10 e0 p0.034
v10 e0 p0.0524
v10 e0 p0.0636
v10 e0 p0.066
v10 e0 p0.0588
v10 e0 p0.0436
v10 e0 p0.0212
v10 e0 p-0.0044
v10 e0 p-0.03
v10 e0 p-0.0524
v10 e0 p-0.0676
v10 e0 p-0.0732
v10 e0 p-0.0688
v10 e0 p-0.0548
v10 e0 p-0.0324
v10 e0 p-0.0048
v10 e0 p0.024
v10 e0 p0.05
v10 e0 p0.0696
v10 e0 p0.0796
v10 e0 p0.0784
v10 e0 p0.066
v10 e0 p0.0444
v10 e0 p0.0156
v10 e0 p-0.0156
v10 e0 p-0.0456
v10 e0 p-0.0696
v10 e0 p-0.084
v10 e0 p-0.0868
v10 e0 p-0.0772
v10 e0 p-0.0568
v10 e0 p-0.0276
v10 e0 p0.0056
v10 e0 p0.0388
v10 e0 p0.0672
v10 e0 p0.0864
v10 e0 p0.0936
v10 e0 p0.088
v10 e0 p0.0696
v10 e0 p0.0408
v10 e0 p0.006
v10 e0 p-0.03
v10 e0 p-0.0624
v10 e0 p-0.0868
v10 e0 p-0.0988
v10 e0 p-0.0972
v10 e0 p-0.0816
v10 e0 p-0.0544
v10 e0 p-0.0192
v10 e0 p0.0192
v10 e0 p0.0556
v10 e0 p0.0844
v10 e0 p0.1016
v10 e0 p0.1048
v10 e0 p0.0932
v10 e0 p0.068
v10 e0 p0.0332
v10 e0 p-0.0068
v10 e0 p-0.0464
v10 e0 p-0.0796
v10 e0 p-0.102
v10 e0 p-0.1104
v10 e0 p-0.1032
v10 e0 p-0.0812
v10 e0 p-0.0476
v10 e0 p-0.0072
v10 e0 p0.0348
v10 e0 p0.0724
v10 e0 p0.1
v10 e0 p0.1136
v10 e0 p0.1116
v10 e0 p0.0936
v10 e0 p0.062
v10 e0 p0.022
v10 e0 p-0.022
v10 e0 p-0.0628
v10 e0 p-0.0952
v10 e0 p-0.1144
v10 e0 p-0.1176
v10 e0 p-0.104
v10 e0 p-0.076
v10 e0 p-0.0368
v10 e0 p0.0076
v10 e0 p0.0512
v10 e0 p0.088
v10 e0 p0.1124
v10 e0 p0.1212
v10 e0 p0.1128
v10 e0 p0.0888
v10 e0 p0.052
v10 e0 p0.0076
v10 e0 p-0.038
v10 e0 p-0.0784
v10 e0 p-0.108
v10 e0 p-0.1224
v10 e0 p-0.1196
v10 e0 p-0.1
v10 e0 p-0.0664
v10 e0 p-0.0232
v10 e0 p0.0232
v10 e0 p0.0664
v10 e0 p0.1008
v10 e0 p0.1204
v10 e0 p0.1236
v10 e0 p0.1092
v10 e0 p0.0796
v10 e0 p0.0384
v10 e0 p-0.008
v10 e0 p-0.0532
v10 e0 p-0.0912
v10 e0 p-0.1164
v10 e0 p-0.1248
v10 e0 p-0.1164
v10 e0 p-0.0912
v10 e0 p-0.0532
v10 e0 p-0.008
v10 e0 p0.0384
v10 e0 p0.0796
v10 e0 p0.1092
v10 e0 p0.1236
v10 e0 p0.1204
v10 e0 p0.1008
v10 e0 p0.0664
v10 e0 p0.0232
v10 e0 p-0.0232
v10 e0 p-0.0664
v10 e0 p-0.1
v10 e0 p-0.1196
v10 e0 p-0.1224
v10 e0 p-0.108
v10 e0 p-0.0784
v10 e0 p-0.038
v10 e0 p0.0076
v10 e0 p0.052
v10 e0 p0.0888
v10 e0 p0.1128
v10 e0 p0.1212
v10 e0 p0.1124
v10 e0 p0.088
v10 e0 p0.0512
v10 e0 p0.0076
v10 e0 p-0.0368
v10 e0 p-0.076
v10 e0 p-0.104
v10 e0 p-0.1176
v10 e0 p-0.1144
v10 e0 p-0.0952
v10 e0 p-0.0628
v10 e0 p-0.022
v10 e0 p0.022
v10 e0 p0.062
v10 e0 p0.0936
v10 e0 p0.1116
v10 e0 p0.1136
v10 e0 p0.1
v10 e0 p0.0724
v10 e0 p0.0348
v10 e0 p-0.0072
v10 e0 p-0.0476
v10 e0 p-0.0812
v10 e0 p-0.1032
v10 e0 p-0.1104
v10 e0 p-0.102
v10 e0 p-0.0796
v10 e0 p-0.0464
v10 e0 p-0.0068
v10 e0 p0.0332
v10 e0 p0.068
v10 e0 p0.0932
v10 e0 p0.1048
v10 e0 p0.1016
v10 e0 p0.0844
v10 e0 p0.0556
v10 e0 p0.0192
v10 e0 p-0.0192
v10 e0 p-0.0544
v10 e0 p-0.0816
v10 e0 p-0.0972
v10 e0 p-0.0988
v10 e0 p-0.0868
v10 e0 p-0.0624
v10 e0 p-0.03
v10 e0 p0.006
v10 e0 p0.0408
v10 e0 p0.0696
v10 e0 p0.088
v10 e0 p0.0936
v10 e0 p0.0864
v10 e0 p0.0672
v10 e0 p0.0388
v10 e0 p0.0056
v10 e0 p-0.0276
v10 e0 p-0.0568
v10 e0 p-0.0772
v10 e0 p-0.0868
v10 e0 p-0.084
v10 e0 p-0.0696
v10 e0 p-0.0456
v10 e0 p-0.0156
v10 e0 p0.0156
v10 e0 p0.0444
v10 e0 p0.066
v10 e0 p0.0784
v10 e0 p0.0796
v10 e0 p0.0696
v10 e0 p0.05
v10 e0 p0.024
v10 e0 p-0.0048
v10 e0 p-0.0324
v10 e0 p-0.0548
v10 e0 p-0.0688
v10 e0 p-0.0732
v10 e0 p-0.0676
v10 e0 p-0.0524
v10 e0 p-0.03
v10 e0 p-0.0044
v10 e0 p0.0212
v10 e0 p0.0436
v10 e0 p0.0588
v10 e0 p0.066
v10 e0 p0.0636
v10 e0 p0.0524
v10 e0 p0.034
v10 e0 p0.0116
v10 e0 p-0.0116
v10 e0 p-0.0328
v10 e0 p-0.0488
v10 e0 p-0.0576
v10 e0 p-0.058
v10 e0 p-0.0504
v10 e0 p-0.0364
v10 e0 p-0.0172
v10 e0 p0.0036
v10 e0 p0.0232
v10 e0 p0.0388
v10 e0 p0.0488
v10 e0 p0.0516
v10 e0 p0.0472
v10 e0 p0.0364
v10 e0 p0.0208
v10 e0 p0.0032
v10 e0 p-0.0148
v10 e0 p-0.0296
v10 e0 p-0.04
v10 e0 p-0.0444
v10 e0 p-0.0428
v10 e0 p-0.0348
v10 e0 p-0.0228
v10 e0 p-0.0076
v10 e0 p0.0076
v10 e0 p0.0212
v10 e0 p0.0316
v10 e0 p0.0372
v10 e0 p0.0372
v10 e0 p0.032
v10 e0 p0.0228
v10 e0 p0.0108
v10 e0 p-0.002
v10 e0 p-0.0144
v10 e0 p-0.024
v10 e0 p-0.0296
v10 e0 p-0.0312
v10 e0 p-0.0284
v10 e0 p-0.0216
v10 e0 p-0.0124
v10 e0 p-0.0016
v10 e0 p0.0084
v10 e0 p0.0172
v10 e0 p0.0228
v10 e0 p0.0252
v10 e0 p0.024
v10 e0 p0.0196
v10 e0 p0.0124
v10 e0 p0.0044
v10 e0 p-0.004
v10 e0 p-0.0116
v10 e0 p-0.0168
v10 e0 p-0.0196
v10 e0 p-0.0192
v10 e0 p-0.0164
v10 e0 p-0.0116
v10 e0 p-0.0056
v10 e0 p0.0012
v10 e0 p0.0068
v10 e0 p0.0116
v10 e0 p0.014
v10 e0 p0.0148
v10 e0 p0.0132
v10 e0 p0.01
v10 e0 p0.0056
v10 e0 p0.0008
v10 e0 p-0.0036
v10 e0 p-0.0072
v10 e0 p-0.0096
v10 e0 p-0.0104
v10 e0 p-0.0096
v10 e0 p-0.0076
v10 e0 p-0.0048
v10 e0 p-0.0016
v10 e0 p0.0016
v10 e0 p0.004
v10 e0 p0.006
v10 e0 p0.0068
v10 e0 p0.0064
v10 e0 p0.0052
v10 e0 p0.0036
v10 e0 p0.0016
v10 e0 p-0.0004
v10 e0 p-0.002
v10 e0 p-0.0032
v10 e0 p-0.0036
v10 e0 p-0.0036
v10 e0 p-0.0032
v10 e0 p-0.0024
v10 e0 p-0.0012
v10 e0 p0
v10 e0 p0.0008
v10 e0 p0.0012
v10 e0 p0.0016
v10 e0 p0.0016
v10 e0 p0.0016
v10 e0 p0.0012
v10 e0 p0.0008
v10 e0 p0
v10 e0 p0
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p-0.0004
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0
v10 e0 p0

v1000 80 '60 '100   ; turn off the note 1 second after vibrato ends

00 ff 2f 00
```


---

# Example 2 #

---


Amplitude vibrato for 4 seconds at 7 Hz with a 25 MIDI unit maximum depth at 2.25 seconds:
<table width='100%'>
<blockquote><tr>
<blockquote><td align='center'>
<blockquote><img src='http://wiki.binasc.googlecode.com/hg/files/images/amplitudevibrato.svg' />
</blockquote></td>
</blockquote></tr>
</table></blockquote>

In the resulting MIDI file, the main volumne continuous controller is updated
once every 10 milliseconds.

[[vibrato-2.txt](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-2.txt)] [[vibrato-2.mid](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-2.mid)]
```
; Amplitude vibrato of 7 Hz for 4 seconds up to 25 MIDI data values depth 
; (around 2.25 seconds). delta time unit is equivalent to 1 millisecond 
; (using SMPTE).

+M +T +h +d		; MIDI file header chunk marker
4'6			; bytes in header to follow
2'0			; format: Type-0 (single track)
2'1			; track count: 1 track
'-25 '40		; divisions: SMPTE: 25 frames/sec 40 subframes/frame
                        ;    in other words: 25 * 40 = 1000 ticks per second.

+M +T +r +k		; Track chunk marker
4'1824			; number of bytes to follow in the track

v0 b0 07 '100           ; main volume controller to 100/127 units
v0 c0 '19		; General MIDI organ timbre
v0 90 '60 '100		; play a note (Middle C)

; now update the volume every 10 milliseconds
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '99
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '100
v10 b0 07 '101
v10 b0 07 '102
v10 b0 07 '103
v10 b0 07 '103
v10 b0 07 '103
v10 b0 07 '102
v10 b0 07 '101
v10 b0 07 '100
v10 b0 07 '99
v10 b0 07 '98
v10 b0 07 '97
v10 b0 07 '96
v10 b0 07 '96
v10 b0 07 '97
v10 b0 07 '98
v10 b0 07 '99
v10 b0 07 '101
v10 b0 07 '103
v10 b0 07 '104
v10 b0 07 '105
v10 b0 07 '105
v10 b0 07 '105
v10 b0 07 '103
v10 b0 07 '102
v10 b0 07 '100
v10 b0 07 '98
v10 b0 07 '96
v10 b0 07 '94
v10 b0 07 '94
v10 b0 07 '94
v10 b0 07 '95
v10 b0 07 '97
v10 b0 07 '100
v10 b0 07 '102
v10 b0 07 '105
v10 b0 07 '106
v10 b0 07 '107
v10 b0 07 '107
v10 b0 07 '106
v10 b0 07 '104
v10 b0 07 '102
v10 b0 07 '98
v10 b0 07 '95
v10 b0 07 '93
v10 b0 07 '91
v10 b0 07 '91
v10 b0 07 '92
v10 b0 07 '94
v10 b0 07 '97
v10 b0 07 '101
v10 b0 07 '104
v10 b0 07 '107
v10 b0 07 '109
v10 b0 07 '110
v10 b0 07 '110
v10 b0 07 '108
v10 b0 07 '105
v10 b0 07 '101
v10 b0 07 '97
v10 b0 07 '93
v10 b0 07 '90
v10 b0 07 '88
v10 b0 07 '88
v10 b0 07 '90
v10 b0 07 '93
v10 b0 07 '98
v10 b0 07 '102
v10 b0 07 '107
v10 b0 07 '110
v10 b0 07 '113
v10 b0 07 '113
v10 b0 07 '112
v10 b0 07 '109
v10 b0 07 '104
v10 b0 07 '99
v10 b0 07 '94
v10 b0 07 '90
v10 b0 07 '87
v10 b0 07 '85
v10 b0 07 '86
v10 b0 07 '89
v10 b0 07 '94
v10 b0 07 '99
v10 b0 07 '105
v10 b0 07 '110
v10 b0 07 '114
v10 b0 07 '116
v10 b0 07 '116
v10 b0 07 '113
v10 b0 07 '109
v10 b0 07 '103
v10 b0 07 '97
v10 b0 07 '91
v10 b0 07 '86
v10 b0 07 '83
v10 b0 07 '83
v10 b0 07 '85
v10 b0 07 '89
v10 b0 07 '94
v10 b0 07 '101
v10 b0 07 '108
v10 b0 07 '113
v10 b0 07 '117
v10 b0 07 '119
v10 b0 07 '118
v10 b0 07 '114
v10 b0 07 '108
v10 b0 07 '101
v10 b0 07 '94
v10 b0 07 '87
v10 b0 07 '83
v10 b0 07 '80
v10 b0 07 '81
v10 b0 07 '84
v10 b0 07 '89
v10 b0 07 '96
v10 b0 07 '104
v10 b0 07 '111
v10 b0 07 '117
v10 b0 07 '120
v10 b0 07 '121
v10 b0 07 '119
v10 b0 07 '114
v10 b0 07 '107
v10 b0 07 '99
v10 b0 07 '91
v10 b0 07 '84
v10 b0 07 '80
v10 b0 07 '78
v10 b0 07 '79
v10 b0 07 '84
v10 b0 07 '90
v10 b0 07 '99
v10 b0 07 '107
v10 b0 07 '114
v10 b0 07 '120
v10 b0 07 '123
v10 b0 07 '122
v10 b0 07 '119
v10 b0 07 '112
v10 b0 07 '104
v10 b0 07 '96
v10 b0 07 '87
v10 b0 07 '81
v10 b0 07 '77
v10 b0 07 '76
v10 b0 07 '79
v10 b0 07 '85
v10 b0 07 '93
v10 b0 07 '102
v10 b0 07 '110
v10 b0 07 '118
v10 b0 07 '122
v10 b0 07 '124
v10 b0 07 '123
v10 b0 07 '118
v10 b0 07 '110
v10 b0 07 '102
v10 b0 07 '92
v10 b0 07 '84
v10 b0 07 '78
v10 b0 07 '76
v10 b0 07 '76
v10 b0 07 '80
v10 b0 07 '87
v10 b0 07 '95
v10 b0 07 '105
v10 b0 07 '113
v10 b0 07 '120
v10 b0 07 '124
v10 b0 07 '125
v10 b0 07 '122
v10 b0 07 '116
v10 b0 07 '108
v10 b0 07 '98
v10 b0 07 '89
v10 b0 07 '82
v10 b0 07 '77
v10 b0 07 '75
v10 b0 07 '77
v10 b0 07 '82
v10 b0 07 '89
v10 b0 07 '98
v10 b0 07 '108
v10 b0 07 '116
v10 b0 07 '122
v10 b0 07 '125
v10 b0 07 '124
v10 b0 07 '120
v10 b0 07 '113
v10 b0 07 '105
v10 b0 07 '95
v10 b0 07 '87
v10 b0 07 '80
v10 b0 07 '76
v10 b0 07 '76
v10 b0 07 '78
v10 b0 07 '84
v10 b0 07 '92
v10 b0 07 '102
v10 b0 07 '110
v10 b0 07 '118
v10 b0 07 '123
v10 b0 07 '124
v10 b0 07 '122
v10 b0 07 '118
v10 b0 07 '110
v10 b0 07 '102
v10 b0 07 '93
v10 b0 07 '85
v10 b0 07 '79
v10 b0 07 '76
v10 b0 07 '77
v10 b0 07 '81
v10 b0 07 '87
v10 b0 07 '96
v10 b0 07 '104
v10 b0 07 '112
v10 b0 07 '119
v10 b0 07 '122
v10 b0 07 '123
v10 b0 07 '120
v10 b0 07 '114
v10 b0 07 '107
v10 b0 07 '99
v10 b0 07 '90
v10 b0 07 '84
v10 b0 07 '79
v10 b0 07 '78
v10 b0 07 '80
v10 b0 07 '84
v10 b0 07 '91
v10 b0 07 '99
v10 b0 07 '107
v10 b0 07 '114
v10 b0 07 '119
v10 b0 07 '121
v10 b0 07 '120
v10 b0 07 '117
v10 b0 07 '111
v10 b0 07 '104
v10 b0 07 '96
v10 b0 07 '89
v10 b0 07 '84
v10 b0 07 '81
v10 b0 07 '80
v10 b0 07 '83
v10 b0 07 '87
v10 b0 07 '94
v10 b0 07 '101
v10 b0 07 '108
v10 b0 07 '114
v10 b0 07 '118
v10 b0 07 '119
v10 b0 07 '117
v10 b0 07 '113
v10 b0 07 '108
v10 b0 07 '101
v10 b0 07 '94
v10 b0 07 '89
v10 b0 07 '85
v10 b0 07 '83
v10 b0 07 '83
v10 b0 07 '86
v10 b0 07 '91
v10 b0 07 '97
v10 b0 07 '103
v10 b0 07 '109
v10 b0 07 '113
v10 b0 07 '116
v10 b0 07 '116
v10 b0 07 '114
v10 b0 07 '110
v10 b0 07 '105
v10 b0 07 '99
v10 b0 07 '94
v10 b0 07 '89
v10 b0 07 '86
v10 b0 07 '85
v10 b0 07 '87
v10 b0 07 '90
v10 b0 07 '94
v10 b0 07 '99
v10 b0 07 '104
v10 b0 07 '109
v10 b0 07 '112
v10 b0 07 '113
v10 b0 07 '113
v10 b0 07 '110
v10 b0 07 '107
v10 b0 07 '102
v10 b0 07 '98
v10 b0 07 '93
v10 b0 07 '90
v10 b0 07 '88
v10 b0 07 '88
v10 b0 07 '90
v10 b0 07 '93
v10 b0 07 '97
v10 b0 07 '101
v10 b0 07 '105
v10 b0 07 '108
v10 b0 07 '110
v10 b0 07 '110
v10 b0 07 '109
v10 b0 07 '107
v10 b0 07 '104
v10 b0 07 '101
v10 b0 07 '97
v10 b0 07 '94
v10 b0 07 '92
v10 b0 07 '91
v10 b0 07 '91
v10 b0 07 '93
v10 b0 07 '95
v10 b0 07 '98
v10 b0 07 '102
v10 b0 07 '104
v10 b0 07 '106
v10 b0 07 '107
v10 b0 07 '107
v10 b0 07 '106
v10 b0 07 '105
v10 b0 07 '102
v10 b0 07 '100
v10 b0 07 '97
v10 b0 07 '95
v10 b0 07 '94
v10 b0 07 '94
v10 b0 07 '94
v10 b0 07 '96
v10 b0 07 '98
v10 b0 07 '100
v10 b0 07 '102
v10 b0 07 '103
v10 b0 07 '105
v10 b0 07 '105
v10 b0 07 '105
v10 b0 07 '104
v10 b0 07 '103
v10 b0 07 '101
v10 b0 07 '99
v10 b0 07 '98
v10 b0 07 '97
v10 b0 07 '96
v10 b0 07 '96
v10 b0 07 '97
v10 b0 07 '98
v10 b0 07 '99
v10 b0 07 '100
v10 b0 07 '101
v10 b0 07 '102
v10 b0 07 '103
v10 b0 07 '103
v10 b0 07 '103
v10 b0 07 '102
v10 b0 07 '101
v10 b0 07 '100
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '98
v10 b0 07 '99
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '101
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '99
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100
v10 b0 07 '100

v1000 80 '60 '100   ; turn off the note 1 second after vibrato ends

00 ff 2f 00
```


---

# Example 3 #

---


An attempt at a guitar glissando.

[[vibrato-3.txt](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-3.txt)] [[vibrato-3.mid](http://wiki.binasc.googlecode.com/hg/files/examples/vibrato-3.mid)]
```
; Fret noise simulation.  A pitch glissando is interrupted every half-step
; by a restrike of a note.  Not so great.

; This file needs be filtered by the C preprocessor:
#define STRUMDELTA 50
#define GLISSDELTA 5

+M +T +h +d		; MIDI file header chunk marker
4'6			; bytes in header to follow
2'0			; format: Type-0 (single track)
2'1			; track count: 1 track
'-25 '40		; divisions: SMPTE: 25 frames/sec 40 subframes/frame
                        ;    in other words: 25 * 40 = 1000 ticks per second.

+M +T +r +k		; Track chunk marker
4'689			; number of bytes to follow in the track

v0 c0 '24		; channel 1: General MIDI acoustic guitar (nylon) 
v0 c1 '127		; channel 2: General MIDI gunshot

; strum the open strings
v0  90 '40 '100		; E2
STRUMDELTA 90 '45 '100	; A2
STRUMDELTA 90 '50 '100	; D3
STRUMDELTA 90 '55 '100	; G3
STRUMDELTA 90 '59 '100	; B3
STRUMDELTA 90 '64 '100	; E4

; mute the open strings two seconds later
v2000  91 '40 '40	; hand slap
v50    80 '40 '100	; E2 off
v0     80 '45 '100	; A2 off
v0     80 '50 '100	; D3 off
v0     80 '55 '100	; G3 off
v0     80 '59 '100	; B3 off
v0     80 '64 '100	; E4 off
v20    81 '40 '40	; hand slap off

v1000 90 '40 '100	; E2 pitch

; glissando up a half-step in GLISSDELTA * 10 milliseconds
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '40 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '41 '90

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '41 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '42 '80

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '42 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '43 '70

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '43 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '44 '60

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '44 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '45 '50

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '45 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '46 '40

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '46 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '47 '30

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '47 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '48 '20

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '48 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '49 '15

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '49 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '50 '10

GLISSDELTA b0 07 '100
GLISSDELTA e0 p0.05
GLISSDELTA e0 p0.10
GLISSDELTA e0 p0.15
GLISSDELTA e0 p0.20
GLISSDELTA e0 p0.25
GLISSDELTA e0 p0.30
GLISSDELTA e0 p0.35
GLISSDELTA e0 p0.40
GLISSDELTA e0 p0.45

GLISSDELTA 80 '50 '0
v0  b0 07 00
v0  e0 p0.0
v0  90 '51 '5

v2000 80 '51 '0

00 ff 2f 00
```
