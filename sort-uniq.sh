#!/bin/bash

# sort in ascending order
sort etc/passwd | less

# sort in descending order
sort -r etc/passwd

# sort in descending order with cut 
cut -d ':' -f 3  /etc/passwd | sort -r

# sort in ascending order with cut 
cut -d ':' -f 3  /etc/passwd | less

# numeric sort in ascending order
cut -d ':' -f 3  /etc/passwd | sort -n

# numeric sort in descending order
cut -d ':' -f 3  /etc/passwd | sort -nr

# sizes if file inside 
sudo du -h /directoryname

# sizes if file inside sorting with MB and GB order (human readable numbers)
sudo du -h /directoryname | sort -h

# sorting of netstat
 netstat -nutl -p tcp | awk '{print $4}' | cut -d '.' -f 5 | sort -n


 # sorting and unique ( -u )
 netstat -nutl -p tcp | awk '{print $4}' | cut -d '.' -f 5 | sort -nu

 # sorting and unique ( -c ) number of occurance 
 netstat -nutl -p tcp | awk '{print $4}' | cut -d '.' -f 5 | sort -n | uniq  -c 
 sudo cat /var/log/messages | awk '{print $5}' | sort | uniq -c | sort -n

# sorting based on key

    cat /etc/passwd | sort -t ":" -k 1 -n -r



# WC 

# wc /etc/passwd
# lines words characters 
# 108     292    6804 /etc/passwd

# word count only
    wc -w /etc/passwd
# character count only
    wc -c /etc/passwd 
# line count only
    wc -l /etc/passwd

# cut -d ":" -f 2 access_log 
# cut access_log | cut -d ":" -f 2 
# cut access_log | cut -d ":" -f 2  | sort | uniq -c | sort -n | tail -3
# cut access_log | cut -d ":" -f 2  | sort | uniq -c | sort -nr | head -3