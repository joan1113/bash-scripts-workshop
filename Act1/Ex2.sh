#!/bin/bash

read -p "Enter the path to the log file: " logfile

if [[ -e "$logfile" && -r "$logfile" ]];then

        total_lines=$(wc -l < "$logfile")

        error_lines=$(grep -c "ERROR" "$logfile")

        warning_lines=$(grep -c "WARNING" "$logfile")

        echo "Total lines: $total_lines"
        echo "Lines with ERROR: $error_lines"
        echo "Lines with WARNING: $warning_lines"

        read -p "Do you want to create a summary file? (y/n): " file

        if [[ "$file" == "y" || "$file" == "Y" ]]; then
                read -p "Enter the name for the file: " summary_file
                echo "Total lines: $total_lines" > "$file"
                echo "Lines with ERROR: $error_lines" >> "$file"
                echo "Lines with WARNING: $warning_lines" >> "$file"
                echo "Summary saved to '$file'"
        fi
        
else
        echo "The file does not exist or is not readable."
fi
