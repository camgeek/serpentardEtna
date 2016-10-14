#!/bin/bash

cat passwd | grep -i 'bin/shells/etna' | sed -n '2~2p' | cut -d : -f 1 | rev | sort -r | sed -n ''$MY_LINE1','$MY_LINE2'p' | tr -s "\n" "," | sed s/\.$/'.\n'/g
