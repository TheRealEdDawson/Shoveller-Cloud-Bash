#!/bin/bash
p=1 ;
for i in {1..20}
do
python Shoveller-Cloud.py access-token.txt shared-secret.txt test0/ datestamp=off
if [ $? -eq 0 ]
then echo "Script was successful and returned code 0" ;
p=0 ;
break ;
fi
echo "This is upload Attempt" $i "of 20" ;
if [ $i -eq 20 ] 
then echo "That script ran way too many times. Something is wrong."
fi
done

if [ $p == 0 ]
then echo "Removing directory..." ;
rm -Rf test0/ ;
echo "Actions complete." ;
fi
