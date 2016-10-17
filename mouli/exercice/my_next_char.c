/*
** my_next_char.c for y in /home/camille/ex3
** 
** Made by VRIGNAUD camille
** Login   <vrigna_c@etna-alternance.net>
** 
** Started on  Mon Oct 17 14:03:37 2016 VRIGNAUD camille
** Last update Mon Oct 17 14:03:45 2016 VRIGNAUD camille
*/

char	my_next_char(char c)
{
  if ((c >= 65 && c < 90) || (c >= 97 && c < 122))
    {
      c = c + 1; 
    }
  else if (c == 90)
    {
      c = 65;
    }
  else if (c == 122)
    {
      c = 97;
    }
  else
    {
     c = 32;
    }
  return (c);
}
