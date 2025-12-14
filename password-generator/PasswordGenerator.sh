#!/bin/bash

#Password Generator with bash


echo "Password Generator"
echo "Please enter the length of the password:"
read PASSLEN

if [[ -z "$PASSLEN" ]]; then
        echo 'invalid entry'	
        break;
else
	openssl rand -hex 48 | cut -c 1-$PASSLEN
fi
