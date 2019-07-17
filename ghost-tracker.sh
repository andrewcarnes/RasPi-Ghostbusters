#!/usr/bin/env bash

#Let's first find out the name of the directory we're running this script in and save to a variable.
WORKINGDIRNAME=$(basename "$PWD")

#Delcare the quarantine folder name as a variable.
QUARANTINEDIR="quarantine"

#Make sure we're running the script in the right folder first.
if [[ "$QUARANTINEDIR" == "$WORKINGDIRNAME" ]]; then

	#If we pass the first folder check, look to see if all the ghosts have been caught.
	if [[ -e ./beetlejuice.gh0st ]] && [[ -e ./boo.gh0st ]] && [[ -e ./flyingdutchman.gh0st ]] && [[ -e ./slimer.gh0st ]] && [[ -e ./staypuft.gh0st ]] && [[ -e ./swayze.gh0st ]] && [[ -e ./casper.gh0st ]]; then
		echo "Congratulations! You caught all the ghosts!"
	else
		#If we're missing ghosts, print a message that some are missing and provide clues.
		echo -e "Looks like you are missing one or more ghosts or the ones you have caught do not have the right names with the proper file extension (*.gh0st). Make sure no ghosts are hidden! \n \n"
		
		if [[ -e ./casper.gh0st ]]; then
			echo "You captured Casper!"
		else
			echo "You are missing an apparition that doesn't want to hide, he wants to be your friend."
		fi

		if [[ -e ./beetlejuice.gh0st ]]; then
			echo "You captured Beetlejuice!"
		else
			echo "You are missing a ghoul that's a fan of repetition."
		fi

		if [[ -e ./boo.gh0st ]]; then
			echo "You captured Boo!"
		else
			echo "You are missing a ghost that's always up for fun and games."
		fi

		if [[ -e ./flyingdutchman.gh0st ]]; then
			echo "You captured the Flying Dutchman!"
		else
			echo "You are missing a green ghoul that lives under the sea and is probably checking his images of maps and sailing charts."
		fi

		if [[ -e ./slimer.gh0st ]]; then
			echo "You captured Slimer!"
		else
			echo "You are missing a gluttonous ghost that's probably making a mess and pigging out on popcorn while watching a movie."
		fi

		if [[ -e ./swayze.gh0st ]]; then
			echo "You caught the ghost of Patrick Swayze!"
		else
			echo "You are missing the original ghost, who's 1990 film was nominated for a 'Best Original Score' Academy Award!"
		fi	

		if [[ -e ./staypuft.gh0st ]]; then
			echo "You captured the formidable Stay Puft Marshmallow Man!"
		else
			echo "You are missing the sneaky physical form of Zuul, who is likely hiding in a secret place in your home directory."
		fi
	fi
else
	echo "Looks like you're not in the right directory. Try running this script from ~/quarantine"
fi