#!/bin/bash

#*****************************************************************************#
# usage_of_testcmd.sh                                                         #
# written by wang.hao                                                         #
# Aug 22.2017                                                                 #
#                                                                             #
# Description                                                                 #
# Basically, I use -x to test a shell script. But just check the output is so #
# hard and time wasting. "IF" cmd can help to exit at where bug happened.     #
#*****************************************************************************#

# --------------------------------------------------------------------------- #
# Constant definition here                                                    #
# --------------------------------------------------------------------------- #

# --------------------------------------------------------------------------- #
# Example 1: empty variable                                                   #
# --------------------------------------------------------------------------- #
empty_var=
if [ $empty_var ];then
	echo "variable is not empty"
else
	echo "variable is empty"
fi

# --------------------------------------------------------------------------- #
# Example 2: trinary                                                          #
# --------------------------------------------------------------------------- #
false_var=
[ $false_var ] &&  echo "\$false_var is set" || echo "\$false_var is not set"
