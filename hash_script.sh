#Generate a unique 4-digit integer, i.e. by using the last four digits of your student ID (AEM). 
#script in a shell of your choice named hash_script,

#BASH shell
# input --> 4-digit integer (my_number)
# output --> hash of the script

echo "Input: $1"

# In Bash, when setting a variable, there should be no spaces around the `=` sign.
# if there are spaces around the `=` it thinks you are setting a command.
my_number=$1

echo "My number: $my_number"

#checks that my_number consists of 4 digits that are between 0-9
if  [[ $my_number =~ ^[0-9]{4}$ ]]; then
	#Generate a hash using SHA-256 algorithm
	# cat > (αρχικοποίηση του output)
	echo "Input is a 4-digit integer."
	echo -n $my_number | sha256sum | cat > hash_output.txt
else
	echo "ERROR!! Provide a 4-digit integer."
fi

#making hash_script.sh an executable
chmod +x hash_script.sh

