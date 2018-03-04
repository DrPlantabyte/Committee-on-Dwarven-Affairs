#!/bin/bash
echo "Checking in..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
DIR_A="$DIR/Dwarf-Fortress/data/save/shared game"
DIR_B="$DIR/Dwarf-Fortress/data/save/UNAVAILABLE"
if [ -d "$DIR_A" ]
then
	git add "$DIR_A"
	git commit -am "checked-in"
	git push origin master
else
	echo "Project is in-use! Try checking it out again later"
fi

