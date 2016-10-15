
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

			      * ErrorLog /home/camille/error-wordpress.log

			      * TransferLog /home/camille/custom-wordpress.log


**Il faut créée un lien symbolique dans site-enable ** On utilise pour ca a2ensite camillesite.conf

**Il faut redemarrer sont apach2 restart** /etc/init.d/apache2 restart

Créée le dossier pour mettre Wordpress et configurer le host
============================================================

on créée un dossier dans /var/www/html on je l'ai appeller camillesite //On voit bien que plus dans mon fichier conf je lui dit de pointer vers ce dossier

On va modifier le fichier hosts qui ce trouve dans /etc/hosts

On rajoute ce fichier notre adresse ip soit 10.0.2.15 et a coter www.camillesite.fr

Installation de MySql
======================

installation des 2 paquets suivant : mysql5-server et php5-mysql

verifier qu'il est bien start pour ca on fait /etc/init.d/musql start

Pour installer wordpress il va falloir préparer notre BDD pour ca on va executer les commandes suivantes :

     	       		 * mysql -u root -p ; //connection en root (u: user p:passw)
			 *create database wordpress ;

			 *create user wordpressuser;

			 *set paswword for wordpressuser =PASSWORD'"acercamille";
			 *GRANT ALL PRIVILEGS ON wordpress.* TO wordpressuser@localhost IDENTIFIED by "acercamille"; //attribu tous les droits pour l'user sur la BBD wordpress
			 *exit;


Téléchargement de wordpress et décompression
=============================================

Pour télécharger wordpress on fait : wget http://wordpress.org/latest.zip

On a besoin de la commande zip pour deziper latest on le télécharge via apt-get

on fait : unzip latest.zip -d /var/www/html/camillesite

Il faut ensuite vider le fichier wordpress dans le camillesite on fati :

** cp -R wordpress/* ./ **

ensuite on supprimer le docier wordpress ( rm -Rf wordpress )

Il faut aussi passer les droit a 777 sur tous le dossier www avec chmod 777 -R pour que wordpress puisse s'intaller sans probléme

Pour créée wordpress on tape tous simplement www.camillesite.fr sur notre machine et on suis les etapes (login : admin , mdp : rootroot)

Connection avec SSH pour passer les logs
========================================

il faut installer openssh-server

pour le lancer faire : /etc/init.d/ssh start

j'ai commencer par faire un teste , ce teste consiste a ce connecter sur ma seconde machine il faut faire :

     	       	   *ssh camille@192.168.1.50

		   * on nous demande le MDP

		   *on est connecter

		   *pour ce deco faire logout

**Identification par clée**

Pour passer nos log on va utilisé un clé c'est plus simple et plus pratique que de demande a chaque foit le MDP

pour générer un clés faire : ssh-keygen -t rsa    (rsa = algo de chiffrement)

il faut ce rendre ensuite dans le dossier .ssh (cd /.ssh)

Pour passer la clé faire : ssh-copy-id -i id_rsa.pub camille@192.168.1.50

On ce connecte un dernière foit pour vérifier que la connection et bonne

*ssh camille@192.168.1.50

Création du script
==================

J'ai créée un script qui permet de passer les log de wordpress , dans ce script on utilse scp

exemple scp    : scp /home/camille/fichierSource.txt camille@192.168.1.50:/home/camille/DossierDestination