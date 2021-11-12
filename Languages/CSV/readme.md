There are two different styles of CSV programs here.  The modules labeled just "CSV" read the entire VSOP87 file into memory when initialized, and store it for later use.  The modules lableled "lowmem" do not store the data in memory, and instead read the file line by line each time.

# CSV Files
You will need at least one of the CSV files in this directory, the the main project page for the differences in each version.  The tests require all of
the CSV files to be in the current directory, but you may simply delete test cases for versions you don't plan to use.

* vsop87.csv
* vsop87a.csv
* vsop87b.csv
* vsop87c.csv
* vsop87d.csv
* vsop87e.csv

# C low memory
### Files:
* cCSVTest_lowmem.c
* vsop87csv_lowmem.c
* vsop87csv_lowmem.h

### Compile:
gcc -o ccsvtest_lowmem.exe cCSVTest_lowmem.c vsop87csv_lowmem.c

### Run:
./ccsvtest_lowmem.exe

# C#
### Files:
* csharpVSOP87CSVTest.cs
* VSOP87CSV.cs

### Compile:
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc csharpVSOP87CSVTest.cs VSOP87CSV.cs

### Run:
./csharpVSOP87CSVTest

# Groovy
### Files:
* GroovyTestCSV.groovy
* VSOP87CSV.groovy

### Run:
groovy GroovyTestCSV.groovy

# Java
### Files:
* JavaTestCSV.java
* VSOP87CSV.java

### Compile:
javac VSOP87CSV.java
javac JavaTestCSV.java

### Run:
java JavaTestCSV

# Perl
### Files:
* perlCSVTest_lowmem.pl
* vsop87csv.py

### Run:
perl perlCSVTest_lowmem.pl

# Python
### Files:
* pythonCSVTest.py
* vsop87csv_lowmem.pm

### Run:
python pythonCSVTest.py