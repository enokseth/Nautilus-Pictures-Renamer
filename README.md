# Nautilus-Pictures-Renamer

## Rename Pictures Recursively with Right Click

1. Clone the GitHub repository to your local directory:
   
`git clone [https://github.com/yourusername/RenamePhoto.git](https://github.com/enokseth/Nautilus-Pictures-Renamer.git)`

2. Copy the "renamephoto" folder to the Nautilus scripts directory:

`cp -r renamephoto ~/.local/share/nautilus/scripts`

3. Provide the necessary permissions to the "rename-photo.sh" script:

`sudo chmod 2777 ~/.local/share/nautilus/scripts/renamephoto/rename-photo.sh`

4. Grant permissions to the desktop entry "renamer.desktop":

`sudo chmod 2777 ~/.local/share/nautilus/scripts/renamephoto/renamer.desktop`

5. Restart Nautilus to apply the changes:

`nautilus -q`
