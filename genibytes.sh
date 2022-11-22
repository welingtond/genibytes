#!/bin/bash
set -u

if [[ $(file $1 | cut -d' ' -f2) == "WebAssembly" ]] ; then
	FILEOUT=${2:-"arraybytes.txt"}
	if [ -f $FILEOUT ] ; then
		rm -vf $FILEOUT
	fi

	touch $FILEOUT
	echo -n "[" >> $FILEOUT
	for X in $(xxd -g1 $1 | cut -d':' -f2 | cut -d' ' -f1-17) ; do echo -n $(printf "0x%s, " $X) >> $FILEOUT ; done
	echo -n -e "\b" >> $FILEOUT
	echo "]" >> $FILEOUT

else
	echo "Error! Use $(basename $0) <wasmfile.wasm>"
	exit 1
fi

exit 0

