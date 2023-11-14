#!/bin/bash

# Define arrays for webpages and DNS servers
webpages=("yahoo.com" "example.com" "google.com") # Add more webpages as needed
dns_servers=("8.8.8.8" "1.1.1.1" "9.9.9.9") # Add more DNS servers as needed

# Loop through each webpage
for webpage in "${webpages[@]}"; do
    echo
    echo "Querying webpage: $webpage"

    # Loop through each DNS server
    for dns in "${dns_servers[@]}"; do
        echo "  Using DNS server: $dns"

        # Perform dig command twice, one second apart
        for i in {1..2}; do
            echo "    Query #$i"
            # Store the output in a variable
            output=$(dig "$webpage" @"$dns" | grep time)

            # Print the output with indentation
            echo "    $output"
            sleep 3 # Wait for x seconds
        done
    done
done
