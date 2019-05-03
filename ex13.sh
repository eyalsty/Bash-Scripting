#! /bin/bash
#Eyal Styskin 206264749

#$1- dir's path
#$2- file's name

cd "$1"
for i in $(ls -v)
do
	if [[ -d $i ]] #if its directory
	then
		cd ./$i #go into that directory
		if [ -f $2 ]	#if file exists print contents
		then 
			cat $2
		fi
		cd .. #return to parent folder
	elif [[ "$i" == "$2" ]]  #elif(not directory), check for file
	then
		cat $i
	fi
done
