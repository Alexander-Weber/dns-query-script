# DNS Query Script
This Bash script is designed to perform DNS queries for a list of specified webpages using a set of given DNS servers. The script is useful for network administrators and developers who need to check DNS resolution times from different servers for various webpages.  
<br>

## To use this script:

1. Save the script to a file, for example: `dns_query.sh`.  
2. Give execute permission to the script: `chmod +x dns_query.sh`.  
3. Run the script: `./dns_query.sh`.  

This script will loop through each webpage and DNS server, perform the `dig` command twice three seconds apart, and print the time from each query. You can modify the `webpages` and `dns_servers` arrays to include the webpages and DNS servers you want to query.  
<br>

You can use this command to only get one query: `dig github.com @1.1.1.1 | grep time`
