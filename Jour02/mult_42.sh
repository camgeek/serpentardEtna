#!/bin/bash

cat passwd | tr : ' ' | awk '{if ($3 % 42 == 0) print $1 ;}' | sort 
