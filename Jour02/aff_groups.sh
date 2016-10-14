#!/bin/bash

groups $MY_USER | sed 's/\ /,/g' | cut -d : -f2- | cut -d , -f2-
