#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Aishe-berra"
echo "Surname: Yeker"
echo "Group: IT2-2309"
echo "Student ID: 37162"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -a)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo
if [ -f "$HOME/devops/yeker_aishe-berra/Yeker_Aishe-berra_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
