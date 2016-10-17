#!/bin/sh
## mouli_jour1.sh for  in /home/kirito/giy/serpentardEtna.git/trunk/mouli
## 
## Made by YOUSSEF seif-eddine
## Login   <yousse_s@etna-alternance.net>
## 
## Started on  Mon Oct 17 10:04:33 2016 YOUSSEF seif-eddine
## Last update Mon Oct 17 19:22:26 2016 YOUSSEF seif-eddine
##

rm *~

echo "Test exercice 1
"

rm putchar_r.txt
gcc -Wall -Wextra -Werror my_put_test.c exercice/my_putchar.c
./a.out > putchar_r.txt

echo "Resultat : 
"

diff my_put_test.txt putchar_r.txt | cat -e

echo "Test exercice 2
"

rm my_putchar_main_guest.txt
gcc -Wall -Wextra -Werror exercice/my_putchar.c exercice/main.c
./a.out > my_putchar_main_guest.txt

echo "Resultat : 
"
diff my_putchar_main_guest.txt my_main_putchar.txt | cat -e

echo "Test exercice 3
"
rm main_next_guest.txt
gcc -Wall -Wextra -Werror exercice/my_putchar.c exercice/my_next_char.c main_next.c
./a.out > main_next_guest.txt

echo "Resultat : 
"
diff main_next.txt main_next_guest.txt | cat -e

echo "Test exercice 4
"

rm main_prev_guest.txt
gcc -Wall -Wextra -Werror exercice/my_putchar.c exercice/my_prev_char.c main_prev.c
./a.out > main_prev_guest.txt

echo "Resultat : 
"
diff main_prev.txt main_prev_guest.txt | cat -e
