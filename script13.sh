#!/bin/bash

date +"%T"|awk '{if ($1<12) {print "buenos dias"} else {print "buenas tardes"}}' FS=":"

user=$(whoami)
echo $user

