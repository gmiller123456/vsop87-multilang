These are implementations of VSOP87 storing the constants in a binary file.  These are significantly smaller than other versions, and may be significantly faster too, depending on the language.

For the tests, copy the .bin files into the test directory with the test program.

The files are in little endian format, and are just the constants A, B, and C from the original VSOP87 files concatenated together.  Each number is a 64 bit float.  See the offsets.txt file for the ordering.  Each record is three 64-bit floats long.  So, after converting the binary data to a float64 array, multiply the offsets by 3 to get the starting index.  The constants are stored in the order A, B, C.  The next record will be at the current offset + 3.