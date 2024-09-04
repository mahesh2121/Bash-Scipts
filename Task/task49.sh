#!/bin/bash
#How to stop a script in based on a given condition?
#which keyword can be used to stop a script.

#!/bin/bash

VAR=10

if [ "$VAR" -eq 10 ]; then
    echo "Condition met, stopping script."
    exit 1  # Exit with a status code of 1
fi

echo "This will not be executed."
