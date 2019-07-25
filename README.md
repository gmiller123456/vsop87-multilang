# About this Project
The purpose of this project is to create versions of VSOP87 in many different languages.  The plan is to generate a initial version in C# truncated to different
precisions, then convert the resulting files into other languages.  This project was inspired by the [Neoprogrammics Source Code Generator Tool](http://www.neoprogrammics.com/vsop87/source_code_generator_tool/).
The goal of this project is to provide easier to use (readymade source files), include all bodies (e.g. the Moon), are truncated to different accuracy levels,
and for more languages.

# What is VSOP87? Why use it?
VSOP87 is one of many solutions available for predicting the positions of the planets (plus the Sun and the Moon) in our solar system.  The actual name is
Variations Séculaires des Orbites Planétaires, and it was published in 1987 by the Bureau des Longitudes.  Even though there have been many other methods
developed before and after VSOP87, it remains one of the most popular methods among amatuers.  It provides better accuracy than most amatuers require (.1 arcseconds)
over a period of a few thousand years before and after the year 2000.

# Truncated versions
Since the full VSOP87 provides more accuracy than most amateurs require, the algorithm can be shortened by eliminating terms.  This speeds up the computations, and
reduces the overall size of the code at the cost of accuracy.  For each programming language, this project supplies VSOP87 truncated at ten different levels.  The
effects of accuracy are detailed in the graphs below.  Each level of truncation eliminates any terms with a coefficient 1/10 the previous truncation level.

Trunaction Level|Total Terms|Skipped Terms|Percent Skipped
----------------|-----------|-------------|---------------
full 	 |269949|0     |0 %
xx large |269949|20998 |7.7 %
x large  |269949|67848 |25.1 %
large 	 |269949|145031|53.7 %
small 	 |269949|218559|80.9 %
x small  |269949|250204|92.6 %
milli 	 |269949|262369|97.1 %
micro 	 |269949|266975|98.8 %
nano 	 |269949|268686|99.5 %
pico 	 |269949|269464|99.8 %



# Accuracy

Accuracy graphs are below.  They show the error in degrees of each body as viewed from Earth.  Each graph shows the error for one body for all truncated versions of
VSOP87.  The error is vs. the full version of VSOP87, so the inherent error in VSOP87 also has to be added.  Some bodies appear twice, to zoom in on the lower portion
of the graph, as the error of the pico version makes it difficult to see errors amongst the larger versions.  The Python script and data to reproduce the graphs is
in the Accuracy folder, by regenerating them you can use the Matplotlib interface to explore the graphs further.

The full VSOP87 accuracy is .1 arcseconds for Saturn, and better for all others.  For more details on accuracy, consult
[Planetary theories in rectangular and spherical variables - VSOP 87 solutions](http://articles.adsabs.harvard.edu/full/1988A%26A...202..309B).

### Mercury
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/mercury.png)

### Venus
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/venus.png)

### Earth-Moon Barrycenter
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/emb.png)

### Earth-Moon Barrycenter (zoomed)
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/emb2.png)

### Mars
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/mars.png)

### Jupiter
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/jupiter.png)

### Saturn
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/saturn.png)

### Saturn (zoomed)
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/saturn2.png)

### Uranus
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/uranus.png)

### Uranus (zoomed)
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/uranus2.png)

### Neptune
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/neptune.png)

### Neptune (zoomed)
![Mercury](https://raw.githubusercontent.com/gmiller123456/vsop87-multilang/master/Accuracy/neptune2.png)
