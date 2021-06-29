#!/bin/bash

declare -r dictionary=$1

while read -r line;
do
	# echo -n $line
	if (steghide extract -sf cute-alien.jpg -p $line 2> /dev/null); then
		echo -e "$line/n"
	else
		echo -e "La contrasena $line no es correcta"
	fi

done < $dictionary
