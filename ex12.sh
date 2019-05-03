#! /bin/bash
#Eyal Styskin 206264749

#$1 libraary path

cd "$1"
for i in $(ls -v)
do
	if [[ $i == *.txt ]]
	then
		echo $i is a file
	fi
done
for j in $(ls -v)
do
	if [[ -d $j ]]
	then
		echo $j is a directory
	fi
done
