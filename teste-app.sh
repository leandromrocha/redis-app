#/bin/bash
RESULT="'wget -qO- http://localhost:8090'"
wget -q localhost:8090
if [ $? -eq 0 ]
then
    echo 'Ok - serviço no ar!'
elif [[ $RESULT == *"Number"* ]]
then
    echo 'Ok - number of visits'
    echo $RESULT
else
    echo 'Not Ok - number of visits'
    exit 1
fi