#!/bin/bash

find $1 ! -iname "."  -iname \*| head -n -1 | wc -l
