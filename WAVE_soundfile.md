Use the command-line invocation:
> `binasc example.txt -c example.wav`
to convert this example into a WAVE soundfile.  This example has five zero-valued samples, with each sample being 2 bytes (16-bits).

```
52 49 46 46 2e 00 00 00 57 41 56 45 66 6d 74 20 10 00 00 00 01 00 01 00 
44 ac 00 00 88 58 01 00 02 00 10 00 64 61 74 61 0a 00 00 00 00 00 00 00 
00 00 00 00 00 00 
```

Here is the same soundfile represented in a more human-readable format:

```
; This is a WAVE formatted soundfile with 5 zero samples.
+R +I +F +F           ; RIFF chunk descriptor
4u'46                 ; size of the chunk in bytes
+W +A +V +E           ; format is the type of RIFF that follows
+f +m +t +            ; the "fmt sub chunk
4u'16                 ; number of bytes total in sub-chuck which follow
2u'1                  ; audio format (PCM Linear)
2u'1                  ; number of channels
2u'44100              ; sampling rate 44100 = ac 44, 2u'44100 = 44 ac
4u'88200              ; byte rate = srate * channels * bitspersample / 8.
2u'2                  ; block align (bytes per sample / 8)
2u'16                 ; bits per sample
+d +a +t +a           ; "data" subchunk
4u'10                 ; size of data subchunk in bytes which follows
2u'0                  ; sample 1
2u'0                  ; sample 2
2u'0                  ; sample 3
2u'0                  ; sample 4
2u'0                  ; sample 5
; end of example wave file.
```
