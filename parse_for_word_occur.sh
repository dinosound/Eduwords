#!/bin/bash
if [[ -z "$1" ]] ; then  
  echo "Enter file as argument"
  exit 1
fi

tr -c '[:alnum:]' '[\n*]' < $1 | sort | uniq -c | sort -nr | head  -200 | less
exit 0
