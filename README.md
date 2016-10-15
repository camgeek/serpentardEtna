
Installation des paquets
========================

	**paquets à installer**
	
	* apt-get install apache2
	
	* apt-get install apache2-utils
	
	* apt-get install php5
	
	* apt-get install php5-dev
	
	* apt-get install php5-gd
	
	* apt-get install openssh-server //ce paquer ne doit être installer que sur la machine serveur (la ou est herger le site web)

Configuration de apache
=======================

Il faut configurer le VirtualHosts , cela aura pour but définir le fichier source de notre site.

Pour ca il faut copier le fichier conf de base qui ce trouve ici : /etc/apache2/sites-avaible/   (il ce nome 000-default.conf) pour le copier on utilise cp

**cp /etc/apache2/sites-avaible/000-default.conf /etc/apache2/sites-available/camillesite **

on ouvre ce fichier avec emacs

il faut modifier les champs : * ServerName www.camillesite.fr

   		     	      * DocumentRoot /var/www/html/camilleSite

			      *ErrorLog /home/camille/