# plisp

In an attempt to learn GNU Flex and Yacc/Bison, I decided to implement a simple
calculator which uses Lisp style prefix notation, in the hopes that some day
it'll be the basis for my first attempt at writing a proper Lisp/Scheme
interpreter.

## Status
plisp is currently capable of evaluating _very_ simple arithmetic expressions
(e.g. addition and subtraction).

## Build/run
- clone repository
- ensure gcc, flex and yacc/bison have been installed
- cd into repository and run `make`
- start the interpreter using `./plisp`

## Resources
- http://shop.oreilly.com/product/9781565920002.do
- http://epaperpress.com/lexandyacc/pry1.html
- http://home.adelphi.edu/~sbloch/class/271/examples/lexyacc/
