#!/bin/bash
LOG_FILE="../logs/Kamilzhanov_Jahongir_system_report.log"

{
    echo "=== System Report ==="
    echo "Student: Jahongir Kamilzhanov (ID: 37941, Group: IT2-2314)"
    echo "Date & Time: $(date)"
    echo "User: $(whoami)"
    echo "OS & Kernel: $(uname -a)"
    echo "--- CPU & Memory ---"
    lscpu | grep "Model name"
    free -h
    echo "--- Disk Usage ---"
    df -h
    echo "====================="
} | tee -a "$LOG_FILE"
