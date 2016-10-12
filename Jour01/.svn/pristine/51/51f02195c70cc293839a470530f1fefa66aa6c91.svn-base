#!/bin/bash

DATE=1210042012
mkdir test0 test2


chmod 715 test0
chmod 504 test2
touch -t $DATE test0
touch -t $DATE test2

touch  test1
echo '123' >test1
touch -t $DATE test1
chmod 414 test1

touch test3
echo '' >test3
touch -t $DATE test3
chmod 404 test3

touch  test4
echo '1' >test4
touch -t $DATE test4
chmod 020 test4

touch  test5
echo '' >test5
touch -t $DATE test5
chmod 404 test5

touch testJour01
echo "12345678912345678912345678912345678912345" >testJour01
touch -t $DATE testJour01
chmod 615 testJour01

ln -s testJour01 test6
touch -h -t $DATE test6
