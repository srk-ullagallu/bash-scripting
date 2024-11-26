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

