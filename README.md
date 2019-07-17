# RasPi Ghostbusters
Learn or teach the bash CLI in UNIX operating systems with this fun ghost-hunting activity!

Inspired by [https://projects.raspberrypi.org/en/projects/pacman-terminal](https://projects.raspberrypi.org/en/projects/pacman-terminal) from the Raspberry Pi Foundation.

## What You Need
You'll want to try this activity on a UNIX OS that uses Bash (the Bourne-Again Shell language) in a CLI (such as Debian Linux). We recommend **Raspbian** (since it comes with a ~/python_games directory; if you want to use with another OS, you'll just need to create the directory manually first).

## Get Started
Note: You shouldn't clone this repo unless you want to look at the source or modify the code.

From your home directory, run the following command from the terminal:

	wget -O http://bit.ly/raspighosts | bash

*Note that this is generally NOT a recommended way to execute code, but we're doing it here for simplicity.* 
This code pipes a raw shell script from the GitHub repository into bash on your computer.

**If** (for whatever reason) **the bit.ly link does not work, you can substitute the** `http://bit.ly/raspighosts` **URL with** `https://raw.githubusercontent.com/andrewcarnes/RasPi-Ghostbusters/master/launch.sh`.


Once the bash script gets going, it will do three things:

1. Create a `~/quarantine` directory.
2. Download the `ghost-tracker.sh` script.
3. Download seven .gh0st files (some of which are hidden!) to seven different folders inside of your home folder.

## Your Mission
After running the initial command above, your mission is to move all the ghosts from their hiding spots to the `~/quarantine` folder and run the `ghost-tracker.sh` script to check if you were successful.

You'll need to move around the filesystem (only under the home folder) with the `cd` command to look in different folders for the .gh0st files.

Use the `ls` command to list out directory contents in different folders. The ghosts are hiding, so you may need to use the `-ah` flag (shows all human-readable files), too.

Once you find a ghost, move it to the `~/quarantine` directory with the `mv` command. You'll also want to use this command to remove any `.`s at the beginning of file names (which will hide files!) so that the tracker can see them. Be sure to keep the ghost names the same and keep the `.gh0st` extension. Here's an example usage of `mv`:

	mv .oldfile.txt ../NewPlace/samefile-newname.txt
	
## Checking Your Work
When you think you've found the ghosts (or you just need a hint), use the Ghost Tracker script to verify your progress. From the `~/quarantine` directory, run

	bash ghost-tracker.sh
	
The ghost tracker will tell you if you've caught them all or if you have more hunting work to do. Remember: the ghost file names are important! The script will fail if you've changed the ghosts' names!

## For Funsies
Look inside the gh0st files with `cat` for a surprise.

	cat ghoul.gh0st

You can also use a text editor, like `nano` or `vi`!

Remember: text editors work differently from bash, so you'll need to press a key combination or sequence to exit the editor and return to the bash CLI.

## RasPi-Ghostbusters as a Teaching Tool
*Coming Soon:* I plan to update this with a lesson plan framework.

## Boring Stuff
I don't own or claim ownership of the following persons, characters, or creative works:

* *Ghostbusters*, Slimer, Zuul, or the Stay Puft Marshmallow Man
* Beetlejuice
* *Super Mario Bros* or Boo
* *Spongebob Squarepants* or the Flying Dutchman
* Patrick Swayze, Sam Wheat, or the film *Ghost* (1990)
* *Casper the Friendly Ghost*

Materials in this repository are licensed under the MIT license. Redistribution and remixing of the contents with attribution is encouraged.