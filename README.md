# About this Project
The purpose of this project is to create versions of VSOP87 in many different languages.  The plan is to generate a initial version in C# truncated to different
precisions, then convert the resulting files into other languages.

# Accuracy

Accuracy graphs are below.  They show the error in degrees of each body as viewed from Earth.  Each graph shows the error for one body for all truncated versions of
VSOP87.  The error is vs. the full version of VSOP87, so the inherent error in VSOP87 also has to be added.  Some bodies appear twice, to zoom in on the lower portion
of the graph, as the error of the pico version makes it difficult to see errors amongst the larger versions.  The Python script and data to reproduce the graphs is
in the Accuracy folder, by regenerating them you can use the Matplotlib interface to explore the graphs further.

The full VSOP87 accuracy is .1 arcseconds for Saturn, and better for all others.  For more details on accuracy, consult
[Planetary theories in rectangular and spherical variables - VSOP 87 solutions](http://articles.adsabs.harvard.edu/full/1988A%26A...202..309B)

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
