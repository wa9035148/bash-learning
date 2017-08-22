#!/bin/bash

#*****************************************************************************#
# delete_file_itratively.sh                                                   #
# written by wang.hao                                                         #
# Aug 22.2017                                                                 #
#                                                                             #
# Description                                                                 #
# Say, in a directory hierachy, you have a same file copied under some folder #
# Let's delete it now.                                                        #
#*****************************************************************************#

# --------------------------------------------------------------------------- #
# Constant definition here                                                    #
# --------------------------------------------------------------------------- #
EXIT_ROOT_DIR=86
NO_FILE_NAME=88
# --------------------------------------------------------------------------- #
# Check the directory, if not, use current one                                #
# --------------------------------------------------------------------------- #
file_name=
if [ $# -lt 1 ]; then
	echo "usage: `basename $0` file_name [directorys]"
	exit
else
	file_name=$1
	shift
fi
[ $# -eq 0 ] && directorys=`pwd` || directorys=$@
# --------------------------------------------------------------------------- #
# Check the directory is not root or empty                                    #
# --------------------------------------------------------------------------- #
check_valid_dir()
{
	if [ "$1" == "/" ];then
		echo "can't do it to root"
		exit
	fi
}
# --------------------------------------------------------------------------- #
# delete file in one directory itretively                                     #
# --------------------------------------------------------------------------- #
delete_file()
{
	check_valid_dir $1
	for element in $1/*; do
		[ -d "$element" ] && delete_file $element
	done
	[ -e "$1/$file_name" ] && rm "$1/$file_name"
}
# --------------------------------------------------------------------------- #
# Send directory to delete_file function                                      #
# --------------------------------------------------------------------------- #
for dir in $directorys; do
	if [ -d $dir ];then
		delete_file $dir
	else
		echo "$dir is not a directory"
	fi
done
