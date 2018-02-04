#!/bin/sh
nim_path=`pwd`/Nim/bin

## only if you use bash 
profile=~/.bash_profile
echo "export PATH=$PATH:${nim_path}" >> ${profile}
source ${profile}
