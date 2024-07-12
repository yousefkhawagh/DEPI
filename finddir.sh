
# Loop through all entries in the home directory
for item in $(find "$HOME" -print); do
  # Check if it's a file, directory, or something else
  if [ -f "$item" ]; then
    echo "$item is file"
  elif [ -d "$item" ]; then
    echo "$item is dir"
  else
    echo "$item is not file or dir"
  fi
done
