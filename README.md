USMap
=====

Description
------------

>`USMap` uses the [Haskell Diagrams](http://projects.haskell.org/diagrams/) library Haskell Diagrams library to create an svg map of the US with states color-coded according to data values received from a csv file. 


Installation
------------
First install the [Haskell Platform](http://www.haskell.org/platform/) and then run
`cabal install diagrams`

Usage
------
Create a csv file with the name of the state in Column A, starting on Row2, and the corresponding data in Column B. 

Run `runhaskell USMap.hs "Csvfilename.csv"`

An svg will be generated.

Example
-------
