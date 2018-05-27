# Night Owl 🌌

A VS Code theme for the night owls out there. Works well in the daytime, too, but this theme is fine-tuned for those of us who like to code late into the night. Color choices have taken into consideration what is accessible to people with colorblindness and in low-light circumstances. Decisions were also based on meaningful contrast for reading comprehension and for optimal razzle dazzle. ✨

![Preview](preview.png)

# Installation

1.  Install [Visual Studio Code](https://code.visualstudio.com/)
2.  Launch Visual Studio Code
3.  Choose **Extensions** from menu
4.  Search for `night-owl-vscode-theme`
5.  Click **Install** to install it
6.  Click **Reload** to reload the Code
7.  File > Preferences > Color Theme > **Night Owl**

## Disable Italics

If you wish to disable italics, there is now a no-italic theme available. You will have access to both, select **Night Owl No Italics** as your color theme.

## Separate the Editor from the Sidebar

I tried my best with this theme to use contrast sparingly so that it's more meaningful, to reduce noise and improve your ability to scan. However, some of the decisions may not work for everyone in every scenario. One such decision that some disagree on is whether or not to have a separation between the editor and sidebar. If you wish for this to have more visual signifigance, please paste this into your user settings preferences. These are my recommendations for these settings but you can use whatever colors you wish. ☺️

```
"workbench.colorCustomizations": {
  "activityBar.background": "#000C1D",
  "activityBar.border": "#102a44",
  "sideBar.background": "#001122",
  "sideBar.border": "#102a44",
},
```

## Preferences shown in the preview

The font in the preview image is Dank Mono, [available here](https://dank.sh/). Editor settings to activate font ligatures:

```
"editor.fontFamily": "Dank Mono",
"editor.fontLigatures": true,
```

The preview image is using [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer), a really cool extension that highlights matching brackets. This can help reduce unwanted errors.

I use this setting:

```
"bracketPairColorizer.forceIterationColorCycle": true,
```

![Bracket](bracket.png)

## Misc

This is my first foray into creating a theme, so if you see something amiss, please feel free to [file an issue](https://github.com/sdras/night-owl-vscode-theme/issues)! I'm sure there are things I missed.

Any relevant changes for each version are documented in the changelog. Please update and check the changelog before filing any issues, as they may have already been taken care of.

This palette was inspired in part by Material Palenight [Theme](https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme), and the accessibility idea was inspired in part by Solarized [Themes](http://ethanschoonover.com/solarized)
