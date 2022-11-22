# genibytes genERATE iNSTRUCTIONS bytes from .wasm files

# This Bash script reads a wasm file and generates a text file with the byte representation of each instruction.
# At least in my Slackware Linux machine, it doesn't not require any additional program, but the utilities pre-installed:
# Utilities (in apparition order): file, cut, touch, xxd, print, echo

# If no filename is supplied as a second argument, the output file will be named "arraybytes.txt"
# Feel free to use. I hope it be usefull.

# Author: welingtonpdias@gmail.com

