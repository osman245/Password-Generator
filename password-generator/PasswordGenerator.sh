#!/bin/bash

#Password Generator with bash


echo "Password Generator"
echo "Please enter the length of the password:"
read PASSLEN


if [[ -z "$PASSLEN" ]]; then
        echo 'invalid entry'	
        break;
else
	for p in $(seq 1 5):
	do
		openssl rand -hex 48 | cut -c1-$PASSLEN
	done
fi
