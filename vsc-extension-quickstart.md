# Welcome to your VS Code Extension

## What's in the folder
* This folder contains all of the files necessary for your color theme extension.
* `package.json` - this is the manifest file that defines the location of the theme file.
and specifies the base theme of the theme.
* `themes/Night Owl-color-theme.json` - the color theme definition file.

## Get up and running straight away
* Press `F5` to open a new window with your extension loaded.
* Open `File > Preferences > Color Themes` and pick your color theme.
* Open a file that has a language associated. The languages' configured grammar will tokenize the text and assign 'scopes' to the tokens. To examine these scopes, invoke the `Inspect TM Scopes` command from the Commmand Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on Mac) .

## Make changes
* You can relaunch the extension from the debug toolbar after making changes to the files listed above.
* You can also reload (`Ctrl+R` or `Cmd+R` on Mac) the VS Code window with your extension to load your changes.
* When editing workbench colors, it's easiest to test the colors in the settings under `workbench.colorCustomizations` and `workbench.tokenColorCustomizations`. When done, run the `Generate Color Theme From Current Settings` command to generate an updated content for the color theme definition file.

## Adopt your theme to Visual Studio Code
* The token colorization is done based on standard TextMate themes. Colors are matched against one or more scopes.
To learn more about scopes and how they're used, check out the [theme](https://code.visualstudio.com/docs/extensions/themes-snippets-colorizers#_adding-a-new-color-theme) documentation.

## Install your extension
* To start using your extension with Visual Studio Code copy it into the `<user home>/.vscode/extensions` folder and restart Code.
* To share your extension with the world, read on https://code.visualstudio.com/docs about publishing an extension.
