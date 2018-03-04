#!/bin/bash
echo "checking out..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
DIR_A="$DIR/Dwarf-Fortress/data/save/shared game"
DIR_B="$DIR/Dwarf-Fortress/data/save/UNAVAILABLE"
git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
if [ -d "$DIR_A" ]
then
	mv "$DIR_A" "$DIR_B"
	git add "$DIR_A" "$DIR_B"
	git commit -m "checked-out and locked"
	git push origin master
	mv "$DIR_B" "$DIR_A"
	git add "$DIR_A" "$DIR_B"
	git commit -m "unlocked"
else
	echo "Project is "$DIR_B"! Try again later"
fi

