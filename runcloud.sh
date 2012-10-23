#!/bin/bash

python Shoveller-Cloud.py access-token.txt shared-secret.txt test0/ datestamp=off

if [ $? -eq 0 ]
then echo "Output code was 0; Success!"
echo "Removing directory...";
rm -Rf test0/ ;
echo "Actions complete."
else echo "Output code was not 0; here we would do something else."
fi 

