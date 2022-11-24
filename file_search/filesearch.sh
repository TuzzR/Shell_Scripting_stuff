#! /bin/bash
#exec cd $home
ls > list_file
cat list_file
#echo “enter the directory to search the file!!!”
#read dir_name
#cd dir_name
echo “$PWD”
#echo “$LS”
#echo $pwd
echo “enter the file name : listed above ”
read file_name
if [ -f $file_name ]
then
if [ -w $file_name ]
then
cat -n $file_name
echo “enter the option to view file of the choice”
echo “enteer the value to head”
read n1
echo “enter the value to tail”
read n2
#echo “enter to file name to save the output::”
#read save_file
exec head -$n1 $file_name |tail -$n2 >save_new
exit_stat=$?
if [ exit_stat=0 ]
then
echo “command succesfully executed::”
else
echo “error occured”
fi
fi
else
echo “file $file_name not found”
#echo “enter the option to view file of the choice”
#echo “enteer the value to head”
#read n1
#echo “enter the value to tail”
#read n2
#echo “enter to file name to save the output::”
#read save_file
#head -n1 file_name |tail -n2| >save_file
fi
