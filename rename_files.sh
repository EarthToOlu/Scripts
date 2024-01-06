# Specify the prefix you want to add to the filenames
prefix="new_"

# Change to the specified directory
cd "$directory" || exit

# Loop through each text file in the directory
for file in *.txt; do
  if [ -f "$file" ]; then
    # Construct the new filename with the prefix
    new_name="${prefix}${file}"

    # Rename the file
    mv "$file" "$new_name"

    echo "Renamed: $file to $new_name"
  fi
done

echo "Task completed!"
