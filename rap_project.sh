#!/bin/bash

#On enregistre tous les logs dans log.out pour pouvoir déboguer
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>init_log.out 2>&1

# Se mettre dans le dossier work
# if [[ -d "work" ]]
# then
#   cd work
# fi

pip install spotipy

