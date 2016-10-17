/*
** my_putchar.c for c in /home/camille
** 
** Made by VRIGNAUD camille
** Login   <vrigna_c@etna-alternance.net>
** 
** Started on  Sat Oct 15 19:11:23 2016 VRIGNAUD camille
** Last update Mon Oct 17 18:30:24 2016 YOUSSEF seif-eddine
*/

#include <unistd.h>

void	my_putchar(char c)
{
  write(1, &c, 1);
}
