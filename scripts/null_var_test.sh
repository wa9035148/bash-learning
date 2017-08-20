#!/bin/bash

#*****************************************************************************#
# null_var_test.sh                                                            #
# written by wang.hao                                                         #
# Aug 20.2017                                                                 #
#                                                                             #
# test if variable has null value.                                            #
#*****************************************************************************#

# --------------------------------------------------------------------------- #
# None constant for this script                                               #
# --------------------------------------------------------------------------- #

# --------------------------------------------------------------------------- #
# Test if a variable has null value.                                          #
# As if use a source command.                                                 #
# --------------------------------------------------------------------------- #
var1=
if [ -z "$var1" ]
then
	echo "\$var1 is NULL"
fi

# --------------------------------------------------------------------------- #
# Test if an command line argument is null                                    #
# Since empty variable also take in count.                                    #
# Just check command line variable number maybe not safe                      #
# --------------------------------------------------------------------------- #
if [ -z "$1" ]
then
	echo "\$1 is NULL"
fi

echo "command line argument number: $#"
