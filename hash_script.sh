read -p "Enter a 4-digit integer: " input

if [[ ! "$input" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Please enter a valid 4-digit integer."
    exit 1
fi

hash_output=$(echo -n "$input" | sha256sum)

hash_output=${hash_output%% *}

echo "$hash_output" > hash_output.txt

echo "Hash of $input saved to hash_output.txt"
