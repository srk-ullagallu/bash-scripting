Defining variables in a shell script is straightforward. Here's how you can do it:

### Syntax to Define Variables
```bash
VARIABLE_NAME=value
```

### Key Points:
1. **No spaces**: There should be no spaces around the `=` sign.
2. **Case-sensitive**: Variable names are case-sensitive (`MY_VAR` is different from `my_var`).
3. **Convention**: Use uppercase letters for variable names by convention.
4. **No special characters**: Variable names can only contain letters, numbers, and underscores (`_`), and must not start with a number.

---

### Examples

#### Defining and Using Variables
```bash
#!/bin/bash

# Define variables
GREETING="Hello"
NAME="World"

# Use variables
echo "$GREETING, $NAME!" # Output: Hello, World!
```

#### Reading Input Into Variables
```bash
#!/bin/bash

# Prompt user and store input
echo "Enter your name:"
read USER_NAME

# Use the input
echo "Hello, $USER_NAME!"
```

#### Arithmetic with Variables
```bash
#!/bin/bash

# Define variables
NUM1=5
NUM2=3

# Perform arithmetic
SUM=$((NUM1 + NUM2))
echo "The sum is $SUM" # Output: The sum is 8
```

#### Exporting Variables
To make a variable available to subprocesses, use `export`:
```bash
#!/bin/bash

export MY_VAR="exported value"
./another_script.sh
```

In `another_script.sh`, you can access `MY_VAR`.

#### Using Environment Variables
Access predefined environment variables like `HOME` or `USER`:
```bash
#!/bin/bash

echo "Your home directory is $HOME"
echo "Your username is $USER"
```

#### Default Values
Provide a default value using `${}` syntax:
```bash
#!/bin/bash

echo "Your name is ${NAME:-Guest}" # Uses "Guest" if NAME is unset
```

This is a common set of configurations used in shell scripts to enforce stricter error handling and improve script robustness. Let’s break it down:

---

### **1. `set -euo pipefail`:**

#### `set -e`
- **Purpose:** Exit the script immediately if any command exits with a non-zero status.
- **Benefit:** Prevents the script from continuing in an unexpected or erroneous state.

#### `set -u`
- **Purpose:** Treat unset variables as errors and exit the script.
- **Benefit:** Helps catch typos or missing variables that could cause issues in the script.

#### `set -o pipefail`
- **Purpose:** Makes the script exit if any command in a pipeline fails (not just the last one).
- **Example:**
  ```bash
  set -o pipefail
  false | true  # This pipeline will cause the script to exit, because `false` fails.
  ```

---

### **2. `IFS=$'\n\t'`:**

#### IFS (Internal Field Separator)
- **Purpose:** Sets the field separator used for word splitting.
- The default `IFS` includes spaces, tabs, and newlines (`IFS=" \t\n"`). 
- By setting it to only `\n` (newline) and `\t` (tab), it:
  - Prevents splitting on spaces.
  - Makes the script handle inputs with spaces more safely.

#### **Benefit:**
- Helps avoid unintended word splitting issues, especially when processing filenames or text containing spaces.

---

### **Putting It Together**
When combined, these configurations:

1. Ensure the script exits on errors or undefined variables.
2. Make pipelines fail if any step in the pipeline fails.
3. Safeguard against issues with word splitting by restricting `IFS`.

### **Example Script**
```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Variables
files=$(ls -1) # List files in the current directory

# Loop through files
for file in $files; do
    echo "Processing file: $file"
done
```

This script:
- Exits if `ls` or `echo` fails.
- Prevents issues with filenames containing spaces.