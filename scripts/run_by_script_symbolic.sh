#!/bin/bash

#*****************************************************************************#
# run_bu_script_symbolic.sh                                                   #
# written by wang.hao                                                         #
# Aug 22.2017                                                                 #
#                                                                             #
# Description                                                                 #
# Run script by its symbolic name.                                            #
#*****************************************************************************#

# --------------------------------------------------------------------------- #
# Constant definition here                                                    #
# --------------------------------------------------------------------------- #

# --------------------------------------------------------------------------- #
# A script with two different symbolic name, do different things              #
# --------------------------------------------------------------------------- #
function foo1()
{
	echo "function foo1"
}

function foo2()
{
	echo "function foo2"
}

case `basename $0` in
	"foo1" ) foo1;;
	"foo2" ) foo2;;
	*      ) echo "`basename $0`";; # default
esac
