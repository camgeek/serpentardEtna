/*
** my_next_char.c for  in /home/kirito/etna/j_01/yousse_s/my_next_char
** 
** Made by YOUSSEF seif-eddine
** Login   <yousse_s@etna-alternance.net>
** 
** Started on  Mon Oct 17 10:40:31 2016 YOUSSEF seif-eddine
** Last update Mon Oct 17 19:25:50 2016 YOUSSEF seif-eddine
*/

#include <unistd.h>

void	my_putchar(char c);

char	my_prev_char(char c)
{
  if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
    {
      if (c != 'A' && c != 'a')
	c--;
      else if (c == 'A')
	c = c + 25;
      else if (c == 'a')
	c = c + 25;
    }
  else
    c = 32;
  return (c);
}
