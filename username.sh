#! /bin/bash
# username.sh
# Isa Lee
echo "Enter a username: (valid usernames must contain only lowercase letters, numbers, and underscores. Username must begin with a lowercase letter and be between 3 and 12 characters long)"
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "This is not a valid username"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
