#!/bin/bash

# $# number of arguments passed to the program
if [ $# -ne 1 ]
then
	echo "ce programme demande un argument"
	exit 1
fi

# $1 first argument passed to the program
URL=$1

# cat << EOF allows to print multiple lines at once
# Write the begining of the HTML file/table
cat << EOF
<html>
	<head>
        <meta charset="UTF-8"/>
        <title>Mini-projet 2</title>
    </head>
    <body>
        <table>
            <tr>
                <th>lineno</th>
                <th>adresse html</th>
                <th>response code</th>
                <th>charset</th>
                <th>word number</th>
            </tr>
EOF

# counter for the line number of the urls file
lineno=0
while read -r line;
do
	# increment the line counter by 1	
	lineno=$(expr $lineno + 1)

    # curl: make an http request
	# -s --silent (do not display extra metadata)
	# -I --head (metadata only)
	# -L --location (follow redirections)
	# -w --write-out "format string" (add metadata at the end of the standard output)
	# tail -n 1 (keep only the last line)
	# $metadata is the HTTP response's status code and contains, separated by a tabulation, the content type
	metadata=$(curl -s -I -L -w "%{response_code}\t%{content_type}" -o /dev/null $line)
	
	# Keep only the first part of the variable, tab being the default separator
	# $(...) -> mandatory to store the result of the command into the variable
	response_code=$(echo "$metadata" | cut -f1)
	
	# Keep the part after the tabulation and look for an expression with "charset",
	# and divide it in two parts in the "=" sign and keep only the right part ("UTF-8")
	charset=$(echo "$metadata" | cut -f2 | grep -E -o "charset=.*" | cut -d= -f2)


	# ok if the http response code starts with 2 (200, 201,...)
	ok=$(echo $response_code | grep ^2)
	

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
	

	# Write one table row (<tr>) for each line in fr.txt
	cat << EOF
            <tr>
                <td class="toto">$lineno</td>
                <td><a href="$line">$line</td>
                <td>$response_code</td>
                <td>$charset</td>
                <td>$num_words</td>
            </tr>
EOF

done < $URL

# Write the end of the HTML table/file
cat << EOF
        </table>
    </body>
</html>
EOF