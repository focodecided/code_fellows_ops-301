#!/usr/bin/env python3

# Import libraries
import os

# Declaration of functions
def generate_directory_structure(directory_path):
    for (root, dirs, files) in os.walk(directory_path):
        print("==root==")
        print(root)
        print("==dirs==")
        print(dirs)
        print("==files==")
        print(files)

# Main
if __name__ == "__main__":
    # Read user input here into a variable
    user_path = input("Enter directory path: ")

    # Pass the variable into the function here
    generate_directory_structure(user_path)

# Got some assistance from chatgpt