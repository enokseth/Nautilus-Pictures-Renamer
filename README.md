# Nautilus-Pictures-Renamer

## Rename pictures recursilvly with right click 

# 1. Cloner le dépôt GitHub dans votre répertoire local
git clone https://github.com/yourusername/RenamePhoto.git

# 2. Copier le dossier "renamephoto" dans le répertoire des scripts Nautilus
cp -r renamephoto ~/.local/share/nautilus/scripts

# 3. Donner les permissions nécessaires au script "rename-photo.sh"
sudo chmod +x ~/.local/share/nautilus/scripts/renamephoto/rename-photo.sh

# 4. Donner les permissions nécessaires à la desktop entry "renamer.desktop"
sudo chmod +x ~/.local/share/nautilus/scripts/renamephoto/renamer.desktop

# 5. Redémarrer Nautilus pour appliquer les modifications
nautilus -q
