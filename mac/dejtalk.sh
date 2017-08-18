#!/bin/bash
total_num=12
num=$(( $RANDOM % $total_num ))
mylist=("Croissants croissants" "N'oublie pas de verrouiller ta session" "Ramasse ta tasse"
"Petit déjeuner, à toi de jouer" "Mais comment désactiver ce script ?" "Pains au chocolat, miam"
"Les chouquettes c'est chouette" "Croissants croissants croissants" "Bouh !"
"Demain c'est petit déjeuner ?" "You lost the breakfast game"
"You really should lock your session")
voicelist=("Thomas" "Thomas" "Thomas" "Thomas" "Amelie" "Amelie" "Amelie"
"Amelie" "Thomas" "Thomas" "Bad News" "Whisper")
say ${mylist[$num]} -v ${voicelist[$num]}
