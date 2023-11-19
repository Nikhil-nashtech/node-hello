read -p "Enter the number of days to consider as 'older': " days
read -p "Confirm if you want to proceed (y/n):" response

if [ "$response" == "y" ]; then
  echo "Files older than $days days:"
  sudo find / -type f -mtime -$days
else
  echo "Exiting."
  exit 0
fi






