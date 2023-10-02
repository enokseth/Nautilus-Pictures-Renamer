#!/bin/bash

# Fonction pour renommer récursivement les fichiers image dans un répertoire
rename_photos_recursive() {
    local repertoire="$1"
    local compteur=1

    for fichier in "$repertoire"/*; do
        if [ -d "$fichier" ]; then
            # Si le fichier est un répertoire, renommez récursivement
            rename_photos_recursive "$fichier"
        elif [ -f "$fichier" ]; then
            # Vérifie s'il s'agit d'un fichier image (vous pouvez ajuster les extensions)
            if [[ "$fichier" =~ \.(jpg|jpeg|png|gif|bmp)$ ]]; then
                # Extrait le nom de base du fichier (sans le chemin)
                nom_base=$(basename "$fichier")

                # Vérifie si le nom de base commence par un numéro de séquence suivi d'un point
                if [[ ! "$nom_base" =~ ^[0-9]+\..*$ ]]; then
                    # Renomme le fichier en ajoutant le numéro de séquence
                    extension="${fichier##*.}"
                    nouveau_nom="$repertoire/$compteur.$extension"
                    mv "$fichier" "$nouveau_nom"
                    ((compteur++))
                fi
            fi
        fi
    done
}

# Vérifie si un répertoire a été spécifié en argument
if [ $# -ne 1 ]; then
    echo "Veuillez spécifier un répertoire en argument."
    exit 1
fi

repertoire_specifie="$1"

# Vérifie si le répertoire spécifié existe
if [ -d "$repertoire_specifie" ]; then
    rename_photos_recursive "$repertoire_specifie"
    echo "Renommage récursif terminé dans le répertoire $repertoire_specifie."
else
    echo "Le répertoire spécifié n'existe pas."
fi
