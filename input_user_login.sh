# Prompt for username and password 
read -p "Enter username: " username
read -s -p "Enter password: " password
# Defining the correct details 
correct_username="daddy"
correct_password="mummy"
# Check if credentials match
if [[ "$username" == "$correct_username" && "$password" == "$correct_password" ]]; then
 # Valid credentials
  read -p "Enter your country of residence: " country
  read -p "Enter your city/state: " location
 # Print welcome message with user information
  echo "Username: [$username], lives in [$country] and [$location]"
else
  # Invalid credentials
  echo "You have no access this time!"
fi

