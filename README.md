USMap
=====

Description
------------

>`USMap` uses the [Haskell Diagrams](http://projects.haskell.org/diagrams/) library to create an svg map of the US with states color-coded according to data values received from a csv file. 


Installation
------------
First install the [Haskell Platform](http://www.haskell.org/platform/) and then run
`cabal sandbox init`
`cabal install`

Usage
------
Create a csv file with the name of the state in Column A, starting on Row2, and the corresponding data in Column B. 

Run `runhaskell USMap.hs "Csvfilename.csv"`

An svg will be generated.

Example
-------
This example shows unemployment data by month beginning in 2003. 

![Example](http://mapgen.files.wordpress.com/2013/11/untitled-51.gif?w=1008)
