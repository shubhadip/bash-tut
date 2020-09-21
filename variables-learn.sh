#!/bin/bash

#!/bin/ruby - ruby script
#!/bin/python - python script

echo 'Current Directory : ';
echo $(pwd)

# Assign value to variable
WORD='I am a Variable'

# Display variable
echo "$WORD"

# single quote changes to string
echo '$WORD'

# concated string
echo "I am a shell ${WORD}ing"

# create new Variable
ENDING=' concateting '

# combine two variables
echo "${WORD}${ENDING}."

# change value of variable && reassign variable 
ENDING='asdasd'
echo $ENDING
