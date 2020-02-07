# QuickNotes
 Quick Note-taking tool for students using your clipboard.

![QuickNotes Launcher](https://i.imgur.com/JYFJguJ.png)



QuickNotes is a tool designed for students and multitaskers. It allows you to quickly save the contents of your clipboard for later reference. This is especially useful for conformation codes or grade comments! It's written in batch code, as well as some jscript for getting the contents of the clipboard.

*This program only supports Windows 10*.

## What you can do

 You can launch any aspect through the launcher, or by running individual files directly.

**1.** Add new QuickNote (`AddNote.bat`):

![Add](https://i.imgur.com/DE8t5QF.png)

​		This tool immediately saves your clipboard with a timestamp to the Notes directory. It's as simple as that.

**2.** View QuickNotes (`ViewNotes.bat`):

![View](https://i.imgur.com/H0pFjPh.png)

​		This tool allows you to view your notes. It shows the most recent first, then, you can press the `N` key on your keyboard to continue to the next two notes. You can also press `1` or `2` to copy the notes back to your clipboard respectively.

**3. ** Search QuickNotes (`SearchNotes.bat`):

![search](https://i.imgur.com/O59xaFI.png)

​		The search tool allows you to type in a keyword, and the tool will show you all of the notes with a matching string in them. Each note will be assigned a number (displayed next to the note's timestamp), which you can enter in order to copy its contents. Users will have to utilize the window's scroller to scroll up and down. Note that it is case sensitive.

**4.** Purge QuickNotes (`PurgeNotes.bat`):

![Purge](https://i.imgur.com/09JPlWl.png)

​	The purge tool allows you to back-up and remove your notes so you can start fresh. All of your notes will be merged into one text file that will be stored in your notes directory. This file will not show up in the Notes Viewer, but can be opened as a regular text file in Windows Explorer.



## Installation

To install this tool, simply download everything in this repository (the readme.md and license.md files are optional). You can then run the tools directly or through the launcher, but you can also create a shortcut and put it in your `%appdata%\Microsoft\Windows\Start Menu\Programs` folder. You can do that by simply copying the launcher or its files and then right clicking in the above mentioned folder, and select `Paste Shortuct`. You can also place those shortcuts wherever you would like.



## Rainmeter

This program also has it's own Rainmeter launcher skin, created from the unFold skin.

![Rainmeter Launcher](https://i.imgur.com/Z9zioee.gif)



You can [download the custom Rainmeter Launcher here](https://github.com/ITCMD/ITCMD-STORAGE/raw/master/QuickNotes%20unFold_1.8.rmskin).

To use it, all you have to do is [install Rainmeter](https://www.rainmeter.net/), then run the .rskin file downloaded above.

You will then have to right-click the skin, select `edit skin`, and then you can replace `ENTER DIRECTORY HERE` with the path to the launcher or whatever file you want to launch with it. Note that there is also a white version included, for which you will also have to edit the skin.



### Created by SetLucas with ITCMD

#### Special thanks to DevilRev, the author of the original unFold skins.

Copyright 2020 Lucas Elliott programming with IT Command http://programs.itcommand.tech

