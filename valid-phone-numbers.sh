# Read from the file file.txt and output all valid phone numbers to stdout.
 
 
 while read line; do
  # echo "$line"
  pat1="^[0-9]{3}-[0-9]{3}-[0-9]{4}$"
  pat2="^[\(][0-9]{3}[\)][[:space:]][0-9]{3}-[0-9]{4}$"
  if [[ $line =~ $pat1 ]] || [[ $line =~ $pat2 ]]; then
    echo $line
  fi
done <file.txt
