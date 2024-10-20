# Function to check if input is a number
is_number() {
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]]; then
    return 1
  fi
  return 0
}
# Get the first number
read -p "Enter first number: " num1
# Check if first number is valid
if ! is_number "$num1"; then
  echo "Invalid input! Please enter a number."
  exit 1
fi
# Get the second number
read -p "Enter second number: " num2
# Check if second number is valid
if ! is_number "$num2"; then
  echo "Invalid input! Please enter a number."
  exit 1
fi
# Get the operation selection
read -p "Select operation (1: Add, 2: Subtract, 3: Multiply, 4: Divide): " operation
# Perform operation based on selection
case $operation in
  1)
    result=$((num1 + num2))
    echo "Sum is $result"
    ;;
 2)
    result=$((num1 - num2))
    echo "Difference is $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Product is $result"
    ;;
  4)
    if [[ $num2 -eq 0 ]]; then
      echo "Only non-zero numbers are allowed for division."
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)  # Use bc for division with decimals
      echo "Quotient is $result"
    fi
    ;;
  *)
    echo "Invalid option!"
    ;;
esac

