#!/usr/bin/env bash
#output looks like this:
#
#➜  hello-world git:(master) ✗ ./hello-world.sh --count 5 --phrase "hello world"   
#hello world
#hello world
#hello world
#hello world
#hello world

#Generate phrase "N" times
phrase_generator() {
    for ((i=0; i<$1;i++)); do
        echo "You entered phrase: $2"
    done
}

#Parse Options
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -c|--number)
    NUMBER="$2"
    shift
    ;;
    -p|--message)
    MESSAGE="$2"
    shift
    ;;
esac
shift
done

#Run program
phrase_generator "${NUMBER}" "${MESSAGE}"
