#!/bin/bash

# $# number of arguments passed to the program
if [ $# -ne 1 ]
then
	echo "ce programme demande un argument"
	exit 1
fi

# $1 first argument passed to the program
URL=$1

# counter for the line number of the urls file
lineno=0
while read -r line;
do
	# increment the line counter by 1	
	lineno=$(expr $lineno + 1)

    # curl: makes an http request
	# -s --silent (do not display extra metadata)
	# -I --head (metadata only)
	# -L --location (follow redirections)
	# -w --write-out "format string" (add metadata at the end of the standard output)
	# tail -n 1 (keep only the last line)
	codes=$(curl -s -I -L -w "\n%{response_code}\t%{content_type}\n" $line | tail -n 1)
	
	# ok if the http response code starts with 2 (200, 201,...)
	ok=$(echo $codes | grep ^2)
	
	if [ -n "$ok" ];
	then
		# lynx: browse a web page
		# -dump (disable interactive mode)
		# -nolist (remove links)
		# wc -w (count the number of words)
		num_words=$(lynx -dump -nolist $line | wc -w)
	else
		num_words=0
	fi
	
	# Display all variables
	# -e enable interpretation of escapes
	# \t tabulation
	echo -e "$num\t$line\t$codes\t$num_words"


	# utiliser curl -o /dev/null au lieu de (ou combiné à) curl -s
	# echo $content_type | grep -E -o "charset=.*" | cut -d= -f
	# echo "text/html" | grep -E -o "charset=.*" | cut -d= -f2

done < $URL
