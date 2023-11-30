
## Ops Challenge: File Permissions.sh EXPLANATIONS
Commands and Concepts:

    #!/bin/bash:
        This line is called a shebang. It tells the system which interpreter to use to execute the script. In this case, it specifies that the script should be run using the Bash shell (/bin/bash).

    echo "Enter the directory path:" and read directory_path:
        echo is a command that prints text to the terminal.
        read is a command that reads a line of input from the terminal and assigns it to the variable directory_path.

    if [ ! -d "$directory_path" ]; then ... fi:
        This is an if statement that checks whether the input directory path provided by the user exists (-d flag checks if it's a directory). If the directory doesn't exist, it prints an error message and exits the script.

    echo "Enter the permissions number (e.g. 777):" and read permissions:
        Similar to the directory path, this prompts the user to enter a permissions number, which is then stored in the variable permissions.

    log_file="permissions_change_log.txt" and change_delay=0.5:
        These lines define variables. log_file stores the name of the log file to which the script will write actions, and change_delay sets the delay time between file changes.

    chmod "$permissions" "$file":
        chmod is a command to change the permissions of a file or directory.
        $permissions is a variable holding the permissions number provided by the user.
        $file is a variable representing each file in the specified directory ("$directory_path"/*). The script iterates through each file and changes its permissions to the specified value.

    sleep "$change_delay":
        sleep is a command that causes the script to pause execution for the specified amount of time ($change_delay). In this case, it adds a slight delay between changing permissions for each file.

    ls -l "$directory_path" and stat -c "%a %n" "$directory_path"/*:
        ls is a command to list directory contents.
        -l is a flag used with ls that provides a long listing format, displaying additional information such as permissions, owner, size, etc.
        stat is a command to display detailed information about specified files or file systems.
        -c "%a %n" is used with stat to format the output. It specifies to display file permissions (%a) and file name (%n).

Flags and Options:

    -e and -l aren't explicitly used as standalone flags in the script provided. -e is used in echo for enabling interpretation of backslash escapes, and -l is used with ls to produce a long listing format.