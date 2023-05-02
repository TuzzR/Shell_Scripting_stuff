#! /usr/bin/bash

declare -A command_types=(
  ["file_management"]="### File Management\n\n"
  ["system_info"]="### System Information\n\n"
  ["networking"]="### Networking\n\n"
  ["process_management"]="### Process Management\n\n"
)

echo "Enter the command:"
read command
echo "Enter a short description of the command:"
read description
echo "Enter any additional details related to the command:"
read details

timestamp=$(date "+%Y-%m-%d %H:%M:%S")

entry="\n**Command:** \`$command\`\n\n**Description:** $description\n\n**Details:** $details\n\n**Timestamp:** $timestamp\n\n---"

echo "Select the command type:"
select type in "${!command_types[@]}"; do
  if [ -n "$type" ]; then
    break
  fi
done

section="${command_types[$type]}"
echo "section: $section" 
temp_file="commands_temp.md"
found_section=false

while IFS= read -r line; do
  if [ "$line" == "$section" ]; then
    found_section=true
  fi

  echo "$line" >> "$temp_file"

  if [ "$found_section" = true ] && [ "$line" == "---" ]; then
    echo -e "$entry" >> "$temp_file"
    found_section=false
  fi
done < commands.md


mv "$temp_file" commands.md

echo "Command documented in commands.md under the $type section"
