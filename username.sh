#! /bin/bash
# zip.sh
# Isa Lee
echo "Enter a username: (valid usernames must contain only lowercase letters, numbers, and underscores. Username must begin with a lowercase letter and be between 3 and 12 characters long) "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][0-9 a-z _]{3-11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - only lowercase letters, digits, and underscores. Username must begin with a lowercase letter and be between 3 and 12 characterslong!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
