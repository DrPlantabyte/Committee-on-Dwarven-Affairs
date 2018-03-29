#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
FILE="shared game-00062-12-08-legends.xml"
java -jar "$DIR/Legends-Browser/legendsbrowser-1.17.1.jar" --world "$DIR/Archive/$FILE"
