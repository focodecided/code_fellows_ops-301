# Create a new .txt file and append three lines
with open('example.txt', 'w') as file:
    file.write("This is line 1.\n")
    file.write("This is line 2.\n")
    file.write("This is line 3.\n")

# Open the file again to read the first line and print it
with open('example.txt', 'r') as file:
    first_line = file.readline()
    print("First line:", first_line.strip())  # Print the first line without newline characters

# Delete the .txt file
import os
if os.path.exists('example.txt'):
    os.remove('example.txt')
    print("File 'example.txt' has been deleted.")
else:
    print("File 'example.txt' does not exist.")