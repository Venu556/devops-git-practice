#!/bin/bash

echo "all variables passed to the script: $@" #all values execute like 20,30 venu
echo "number of variables passed: $#" #how many values given, total it will count
echo "script name: $0" #to know what is our script file
echo "current working directory: $PWD" # to know our current working directory
echo "home directory of current user: $HOME" # to know home directory of current user
echo "process instance id(PID) of the script executing now: $$" # to know the PID 

sleep 100 &
echo "PID of last background command: $!"