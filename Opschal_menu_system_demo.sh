#!/bin/bash

while true; do
    clear
    echo "What do you want to do?"
    echo "1. Say Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"
    read choice

    if [[ $choice == 1 ]]; then
        echo "Hello World!"
        read -p "Press Enter to continue"
    elif [[ $choice == 2 ]]; then
        echo "Ping started"
        echo "--------->"
        read -p "Enter your computer's loopback address and press ENTER: " loopback_address
        loopback_address=${loopback_address:-127.0.0.1}
        ping -c 4 "$loopback_address"
        read -p "Press Enter to continue"
    elif [[ $choice == 3 ]]; then
        echo "Ok, let's grab your IP information"
        echo "--------->"
        read -p "Enter your computer's type (Windows or otherwise): " computer_type
        if [[ $computer_type == "Windows" ]]; then
            # For Windows, use ipconfig
            ipconfig | awk '/IPv4 Address/ {print $NF}'
        else 
            # For Linux, use ip addr
            ip addr show | awk '/inet / {print $2}' | awk -F'/' '{print $1}'
        fi
        read -p "Press Enter to continue"
    elif [[ $choice == 4 ]]; then
        echo "Thanks for playing. See you later!"
        exit 0
    else
        echo "Invalid choice"
        read -p "Press Enter to continue"
    fi
done

# Recieved some help from chatgpt