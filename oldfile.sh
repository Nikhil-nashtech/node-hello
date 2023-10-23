


confirm() {
  read -p "$1 (yes/no): " response
  case "$response" in
    [yY][eE][sS]|[yY]) 
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}


read -p "Enter the number of days to consider as 'older': " days

echo "Files older than $days days:"
find / -type f -mtime +$days


if confirm "Do you want to continue?"; then
  echo "Continuing..."
else
  echo "Exiting."
  exit 0
fi


