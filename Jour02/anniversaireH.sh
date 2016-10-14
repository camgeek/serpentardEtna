#!/bin/bash
# author : hroux
ANNEE_PARAM=`echo $1 | cut -d'-' -f3`
MOIS_PARAM=`echo $1 | cut -d'-' -f2`
JOUR_PARAM=`echo $1 | cut -d'-' -f1`

ANNEE_AUJ=`date +"%Y"`
MOIS_AUJ=`date +"%m"`
JOUR_AUJ=`date +"%d"`

JOUR_RESTAUJ=`date +"%j"`

DATE_ENTREE=`echo $ANNEE_AUJ"-"$MOIS_PARAM"-"$JOUR_PARAM`
JOUR_RESTPARAM=`date -d "$DATE_ENTREE" +"%j"`

#Pour afficher l'age
AGE=`expr $ANNEE_AUJ - $ANNEE_PARAM`

BON=0
if [ $MOIS_PARAM -gt $MOIS_AUJ ]
then AGE=$(($AGE-1))
     BON=1
else
    if [ $MOIS_PARAM -eq $MOIS_AUJ ]
    then
       	if [ $JOUR_AUJ -lt $JOUR_PARAM ]
	then
	    AGE=$(($AGE-1))
	    BON=1
	else
	    if [ $JOUR_AUJ -eq $JOUR_PARAM ]
	    then
		BON=1
	    fi
	    
	fi
       
	
	
    fi
    
fi

ANNEESUPP=$(($ANNEE_AUJ+1))
DATE_ENTREE=`echo $ANNEE_AUJ"-"$MOIS_PARAM"-"$JOUR_PARAM`
JOUR_RESTPARAM=`date -d$DATE_ENTREE +"%j"`
JOUR_RESTANT=$(($JOUR_RESTPARAM - $JOUR_RESTAUJ))
if [ $BON -ne 1 ]
then
    NB_JOURAN=366
    DATESUPP=`echo $ANNEESUPP"-"$MOIS_PARAM"-"$JOUR_PARAM`
    JOURSUPP=`date -d$DATESUPP +"%j"`
    JOUR_RESTANT=$(($NB_JOURAN - $JOUR_RESTAUJ))
    JOUR_RESTANT=$(($JOUR_RESTANT + $JOURSUPP))
fi

if [ $AGE -lt 0 ]
then
    AGE=0
fi
echo "Age : $AGE ans"

echo -n "Prochain anniversaire dans : $JOUR_RESTANT "
if [ $JOUR_RESTANT -le 1 ]
then
    echo "jour"
else
    echo "jours"
fi
