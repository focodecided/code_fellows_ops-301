import os

# Define variables
name = "Alice"
age = 25
location = "Ubuntu"

# Print variable values
print("Name:", name)
print("Age:", age)
print("Location:", location)

# Execute bash commands using os.system()
print("\nExecuting bash commands:")
os.system("whoami")  # Executes 'whoami' command
os.system("ip a")    # Executes 'ip a' command
os.system("lshw -short")  # Executes 'lshw -short' command
