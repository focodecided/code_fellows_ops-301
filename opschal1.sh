#!/bin/bash

# Script:         Ops 301 Ops Chall 02
# Purpose:        Append, date and time
# Why:            Time stamping is a critical step in automating log generation.

year=`date +%Y`
echo $year
month=`date +%m`
echo $month
day=`date +%d`
echo $day
hour=`date +%H`
echo $hour
minute=`date +%M`
echo $minute
second=`date +%S`
echo $second

# Current date
current_date=$(date +"%Y-%m-%d_%H-%M-%S")

# Destination directory (current working directory)
destination_dir=$(pwd)

# How to row append

# First create a file new_filename.txt and add some lines to it.
echo "Original file before append:"
cat new_filename.txt

# The >> double carrot will row append
echo "My new string with date: `$current_date`" >> new_filename.txt
echo "Appended file:"
cat new_filename.txt

# Copy syslog to the current directory with the new filename
cp /var/log/syslog "$destination_dir/$new_filename"


# End
