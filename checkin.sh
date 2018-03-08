#!/bin/bash
echo "Checking in..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
DIR_A="Dwarf-Fortress/data/save/shared game"
DIR_B="Dwarf-Fortress/data/save/UNAVAILABLE"
if [ -d "$DIR_A" ]
then
	git add "$DIR_A"
	git add "Committee-Notes.txt" "Dwarf-Fortress/gamelog.txt"
	git update-index --assume-unchanged "Dwarf-Fortress/errorlog.txt" "Dwarf-Fortress/stdout.txt" "Dwarf-Fortress/stderr.txt" "Dwarf-Therapist/log/run.log"
	git commit -am "checked-in"
	git push origin master
else
	echo "Project is in-use! Try checking it out again later"
fi

