Due to possible issues with some Pascal compilers, this segmented version is provided, which may work around issues in some compilers.

This was tested with Free Pascal, and it still could not link a program containing the full versions of all VSOP versions, so the
tests have to be run piecewise.  Comment out all "using" clauses exept for one version, and comment out all tests except those for
the version you're testing.

Free Pascal passes all tests at full precision.