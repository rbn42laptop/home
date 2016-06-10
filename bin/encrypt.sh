#!/bin/bash
export KEYFILE="$HOME/.github_sync_aes_key"
#Generate key
#openssl enc -aes-256-cbc -k secret -P -md sha1  | grep key > $KEYFILE

#openssl enc -aes-256-cbc -salt -in $1 -out $2 -kfile $KEYFILE
openssl enc -aes-256-cbc -nosalt -in $1 -out $2 -kfile $KEYFILE

#Decrypt
#openssl enc -aes-256-cbc -d -in $1 -out $2 -kfile $KEYFILE
