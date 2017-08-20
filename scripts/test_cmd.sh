#!/bin/bash

#*****************************************************************************#
# test_cmd.sh                                                                 #
# written by wang.hao                                                         #
# Aug 20.2017                                                                 #
#                                                                             #
# Learning test construct                                                     #
#*****************************************************************************#

# --------------------------------------------------------------------------- #
# Constant definition here                                                    #
# --------------------------------------------------------------------------- #

# --------------------------------------------------------------------------- #
# [ command, can use without if, it generates exit status                     #
# --------------------------------------------------------------------------- #
[ 0 -gt 1 ]
echo $?

# --------------------------------------------------------------------------- #
# if/then construct test whether the exit status of a list of command is 0    #
# Note: if [ ... ] construct is if + commnad since [ is a command             #
# If it self is not a test command, so can't write if 1 -gt 0                 #
# if only looks at exit status, so if (( 0 && 1)) should also work            #
# --------------------------------------------------------------------------- #
if [ 1 -gt 0 ];then
	echo "[] works"
fi

if (( 2 && 1 ));then
	echo "(()) works"
fi

# --------------------------------------------------------------------------- #
# If can test any command, cmp, grep, and others                              #
# --------------------------------------------------------------------------- #
