#!/bin/bash

cd $(dirname $0)
install_location=$(pwd)
echo $install_location
cd - &>/dev/null 

inputfile=$1; shift
recipients=$1; shift
outputfile=$1; shift

if [[ $1 ]]; then
   echo "Too many arguments"
fi

if [[ -z $recipients ]]; then
   recipients=all
fi

if [[ -z $outputfile ]]; then
   outputfile="$inputfile.gpg"
fi

if [[ -f $install_location/teams/$recipients ]]; then
   recipients=$(cat $install_location/teams/$recipients | sed 's/^/-r /' | xargs)
else
   recipients="-r $recipients"
fi

gpg --encrypt $recipients "$inputfile" > "$outputfile" 
