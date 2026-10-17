#!/bin/sh
echo "Name: Jahongir"
echo "Surname: Kamilzhanov"
echo "Group: IT2-2314"
echo "Student ID: 37941"
echo "User: $(whoami)"
echo "Host: $(hostname)"
echo "Date: $(date)"
df -h / | tail -n 1
free -h
