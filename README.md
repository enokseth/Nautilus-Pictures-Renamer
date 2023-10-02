# Nautilus-Pictures-Renamer

## Rename Pictures Recursively with Right Click

1. Clone the GitHub repository to your local directory:
   
`git clone https://github.com/yourusername/RenamePhoto.git`

2. Copy the "renamephoto" folder to the Nautilus scripts directory:

`cp -r renamephoto ~/.local/share/nautilus/scripts`

3. Provide the necessary permissions to the "rename-photo.sh" script:

`sudo chmod 2777 ~/.local/share/nautilus/scripts/renamephoto/rename-photo.sh`

4. Grant permissions to the desktop entry "renamer.desktop":

`sudo chmod 2777 ~/.local/share/nautilus/scripts/renamephoto/renamer.desktop`

5. Restart Nautilus to apply the changes:

`nautilus -q`

6. You should now see the "Scripts" and "renamephoto" and "rename-photo.sh" option when you right-click on a folder containing images using the Nautilus file manager.

![Image de mon projet](https://github.com/enokseth/Nautilus-Pictures-Renamer/tree/main/img/6.png?raw=true)


7. Select the "rename-photo.sh" option, and the script will rename the image files in the selected folder and its subfolders, adding a sequential number to each file.

![Image de mon projet](https://github.com/enokseth/Nautilus-Pictures-Renamer/tree/main/img/7.png?raw=true)

## Customization

You can customize the script by modifying the list of file extensions that it considers as image files. By default, it includes .jpg, .jpeg, .png, .gif, and .bmp files. You can edit the script to add or remove file extensions according to your needs.

## License

This project is licensed under the MIT License - see the LICENSE file for details.


