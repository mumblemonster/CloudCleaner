#!/bin/sh
echo Hello and welcome to the Cloud Cleaner!

for i in $(doctl compute droplet list | cut -b -10 | sed 1d | egrep -v '(99850533|82889906|82395370)')
do doctl compute droplet delete -f $i && echo Destroyed $i
done

