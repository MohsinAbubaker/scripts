#!/bin/bash

# Function to create a new user account
create_user_account() {
    # Input: username, password, and full name
    read -p "Enter the username: " username
    read -sp "Enter the password: " password
    echo
    read -p "Enter the full name: " fullname
    read -p "Enter the email: " email

    # Check if user already exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
        exit 1
    fi

    # Create user with home directory and default shell
    sudo useradd -m -c "$fullname" -s /bin/bash "$username"

    # Set the user's password
    echo "$username:$password" | sudo chpasswd

    # Optionally set user's email as a comment in the system
    sudo usermod -c "$fullname - $email" "$username"

    echo "User account '$username' created successfully."
}

# Call the function to create a user
create_user_account

