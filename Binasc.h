//
// Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
// Creation Date: Mon Feb 16 12:26:32 PST 2015 Adapted from binasc program.
// Last Modified: Thu 27 Jan 2022 08:06:22 PM PST
// Filename:      midifile/include/Binasc.cpp
// Syntax:        C++11
// vim:           ts=3 expandtab
//
// description:   Interface to convert bytes between binary and ASCII forms.
//

#ifndef _BINASC_H_INCLUDED
#define _BINASC_H_INCLUDED

#include <iostream>
#include <fstream>
#include <string>
#include <cstdint>

class Binasc {
	public:
		         Binasc         (void);
		        ~Binasc         ();

		// functions for setting options:
		int      setLineLength  (int length);
		int      getLineLength  (void);
		int      setLineBytes   (int length);
		int      getLineBytes   (void);
		void     setComments    (int state);
		void     setCommentsOn  (void);
		void     setCommentsOff (void);
		int      getComments    (void);
		void     setBytes       (int state);
		void     setBytesOn     (void);
		void     setBytesOff    (void);
		int      getBytes       (void);
		void     setMidi        (int state);
		void     setMidiOn      (void);
		void     setMidiOff     (void);
		int      getMidi        (void);

		// functions for converting into a binary file:
		int      writeToBinary  (const std::string& outfile, const std::string& infile);
		int      writeToBinary  (const std::string& outfile, std::istream& input);
		int      writeToBinary  (std::ostream& out, const std::string& infile);
		int      writeToBinary  (std::ostream& out, std::istream& input);

		// functions for converting into an ASCII file with hex bytes:
		int      readFromBinary (const std::string& outfile, const std::string& infile);
		int      readFromBinary (const std::string& outfile, std::istream& input);
		int      readFromBinary (std::ostream& out, const std::string& infile);
		int      readFromBinary (std::ostream& out, std::istream& input);

		// static functions for writing ordered bytes:
		static std::ostream& writeLittleEndianUShort (std::ostream& out, uint16_t value);
		static std::ostream& writeBigEndianUShort    (std::ostream& out, uint16_t value);
		static std::ostream& writeLittleEndianShort  (std::ostream& out, int16_t  value);
		static std::ostream& writeBigEndianShort     (std::ostream& out, int16_t  value);
		static std::ostream& writeLittleEndianULong  (std::ostream& out, uint32_t  value);
		static std::ostream& writeBigEndianULong     (std::ostream& out, uint32_t  value);
		static std::ostream& writeLittleEndianLong   (std::ostream& out, int32_t   value);
		static std::ostream& writeBigEndianLong      (std::ostream& out, int32_t   value);
		static std::ostream& writeLittleEndianFloat  (std::ostream& out, float  value);
		static std::ostream& writeBigEndianFloat     (std::ostream& out, float  value);
		static std::ostream& writeLittleEndianDouble (std::ostream& out, double value);
		static std::ostream& writeBigEndianDouble    (std::ostream& out, double value);

		static std::string   keyToPitchName          (int key);

	protected:
		// helper functions for reading ASCII content to conver to binary:
		int      processLine        (std::ostream& out, std::string& input, int lineNum);
		int      processAsciiWord   (std::ostream& out, const std::string& input, int lineNum);
		int      processStringWord  (std::ostream& out, const std::string& input, int lineNum);
		int      processBinaryWord  (std::ostream& out, const std::string& input, int lineNum);
		int      processDecimalWord (std::ostream& out, const std::string& input, int lineNum);
		int      processHexWord     (std::ostream& out, const std::string& input, int lineNum);
		int      processVlvWord     (std::ostream& out, const std::string& input, int lineNum);
		int      processMidiPitchBendWord(std::ostream& out, const std::string& input, int lineNum);
		int      processMidiTempoWord(std::ostream& out, const std::string& input, int lineNum);

		// helper functions for reading binary content to convert to ASCII:
		int      outputStyleAscii   (std::ostream& out, std::istream& input);
		int      outputStyleBinary  (std::ostream& out, std::istream& input);
		int      outputStyleBoth    (std::ostream& out, std::istream& input);
		int      outputStyleMidi    (std::ostream& out, std::istream& input);

		// MIDI parsing helper functions:
		int      readMidiEvent  (std::ostream& out, std::istream& infile, int& trackbytes, int& command);
		int      getVLV         (std::istream& infile, int& trackbytes);
		int      getWord        (std::string& word, const std::string& input,
		                         const std::string& terminators, int index);

	private:
		int bytesQ        = 1;  // option for printing hex bytes in ASCII output.
		int commentsQ     = 0;  // option for printing comments in ASCII output.
		int midiQ         = 0;  // output ASCII data as parsed MIDI file.
		int maxLineLength = 75; // number of character in ASCII output on a line.
		int maxLineBytes  = 25; // number of hex bytes in ASCII output on a line.
};


#endif /* _BINASC_H_INCLUDED */



