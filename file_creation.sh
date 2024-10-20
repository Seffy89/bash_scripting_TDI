# Function to check for valid extension
is_valid_extension() { 
   local ext="$1"
  ext="${ext##*.}"
   case "$ext" in
    txt|csv|xlsx|json) return 0 ;;
    *) return 1 ;;
  esac
}
# Create the "dataset" directory if it doesn't exist
if [[ ! -d dataset ]]; then
  mkdir dataset
fi

# Prompt for file name
read -p "Enter file name with extension (e.g., file.txt, data.csv): " filename
# Extract extension
extension="${filename##*.}"
echo "Extracted extension: $extension"

# Check if extension is valid
if ! is_valid_extension "$extension"; then
  echo "File not created. Invalid extension. Valid extensions include: .txt, .csv, .xlsx, and .json"
  exit 1
fi

# Create the file with appropriate extension
touch "dataset/$filename"

echo "File created successfully: dataset/$filename"
