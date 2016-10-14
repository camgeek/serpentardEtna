#!/bin/bash

grep -E 'etna1|prof' passwd | sed 's/\prof/gentil/g' | sed 's/\etna1/newbee/g'
