#!/bin/bash

# On enregistre tous les logs dans log.out pour pouvoir déboguer
# exec 3>&1 4>&2
# trap 'exec 2>&4 1>&3' 0 1 2 3
# exec 1>log.out 2>&1

# Pareil pour les variables d'environnement
env | sort > env_init.out

ls

# Se mettre dans le dossier work
if [[ -d "work" ]]
then
  cd work
fi

ls

pip install spotipy

python3 <<END
#this is a test
import time

print("Hello from Python")

for count in range(1,300):
    time.sleep(1)
    print(count)
END
