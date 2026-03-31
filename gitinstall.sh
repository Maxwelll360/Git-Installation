#!/bin/bash

# 1. Install Git
echo "Checking for Git..."
if ! command -v git &> /dev/null
then
    echo "Git not found. Installing Git..."
    sudo apt update && sudo apt install git -y
else
    echo "Git is already installed."
fi

echo "----------------------------------------"

# 2. Prompt for User Information
echo "Please enter your details to configure Git globally:"

# The 'read' command captures user input into variables
read -p "Enter your Full Name (e.g., John Doe): " git_name
read -p "Enter your Email Address: " git_email

# 3. Configure Git Globally
echo "Configuring Git..."
git config --global user.name "$git_name"
git config --global user.email "$git_email"

# Set default branch to 'main' for modern compatibility
git config --global init.defaultBranch main

echo "----------------------------------------"

# 4. Verify Configuration
echo "Git has been configured with the following details:"
echo "User Name: $(git config --global user.name)"
echo "User Email: $(git config --global user.email)"
echo "Default Branch: $(git config --global init.defaultBranch)"

echo ""
echo "Setup complete! You're ready to use Git."

