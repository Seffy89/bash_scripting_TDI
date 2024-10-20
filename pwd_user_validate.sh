## A script to validate the users input with an if-else statement.
USERNAME="popcorn"
PASSWORD="snacks"
read -p "Enter username: " entered_username  # Prompt for username with visible input
read -s -p "Enter password: " entered_password  # Prompt for password with hidden input
echo

if [[ $entered_username == $USERNAME ]] && [[ $entered_password == $PASSWORD ]]; then
  echo "User access granted with username [$entered_username]."  #input Success
else
  echo "Incorrect username or password."   # Error message
fi



