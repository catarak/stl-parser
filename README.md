#Parsing STL files

This is my first journey in parsing .stl files. I've made the assumption that the .stl file has no errors. I think this is reasonable since I don't think .stl files are written by humans usually.

A Solid object has many vertices, facets, and has a name. When a facet is inserted into a solid, its vertices are also inserted as well. If a vertex already has been added to the solid, it will not be added twice. Identical facets will also not be added twice. 

In the code as it is right now, a vertex and vector behave identically, just with a different name. Vectors and vertices have very different properties, conceptually, and therefore I decided to separate them into separate classes.

##How To Run

To see the results of my code, first clone the repository
```bash
$ git clone git@github.com:catarak/stl-parser.git
```

Then change into the project directory
```bash
$ cd stl-paster
```
And then run it by entering the command
```bash
$ bin/parser
```

And the output looks something like
```bash
Number of facets: 44
Number of (unique) vertices: 22
```