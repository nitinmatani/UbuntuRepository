#! /bin/bash
# this a comment
echo "Hello World"

echo Our shell name is $BASH
echo Our shell version name is $BASH_VERSION
echo Our home directory is $HOME
echo Our current working directory is $PWD

#name=Mark
#echo The name is $name

#Reading the values from input
#echo "Enter names : "
#read name1 name2 name3 
#echo "Entered names : $name1 ,$name2 ,$name3"

#password as silent i.e not visible on screen while input

#read -p 'username : ' user_var
#read -sp 'Password : ' pass_var
#echo
#echo "username : $user_var"
#echo "Password : $pass_var"

#Array as input
#echo "Enter names : "
#read -a names
#echo "Names : ${names[0]} ,${names[1]}"

#Read without a variable to a default variable
#echo "Enter name : "
#read 
#echo "Name : $REPLY"

#parsing arguments from command line
#echo $0 $1 $2 $3 ' > echo $1 $2 $3'

#Parsing arguments into an array
#args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]}
#echo $@

#To know num of arguments passed to the script
#echo $#

#if statements
count=10

# if [ $count -eq 10 ]
# then
#     echo "condition is true"
# fi

#condtion operators symbols will use round brackets instead of square 
# if (($count > 9))
#  then
#     echo "condition is true"
# fi

#String conditon check will use only operators symbols for condition check
# word=abc
# if [ $word == "abc" ]
#  then
#     echo "condition is true"
# fi


# word=a
# if [[ $word < "b" ]]
# then
#     echo "condition is true"
# else
#     echo "condition is false"
# fi

# word=b
# if [[ $word == "b" ]]
# then
#     echo "condition b is true"
# elif [[ $word == "a" ]] 
# then
#     echo "condition a is true"   
# else
#     echo "condition is false"
# fi

#File test Operators

# echo -e "Enter the name of the file : \c"
# read file_name

# -e flag to check whether file exists or not
# -f if file exists and if it is a regular file or not
# -d to check if directory exists or not
# -b for block special file
# -c for character special file
# -s to check whether file is empty or not
# -r  to check whether file has read permission
# -w to check whether file has write permission
# -x to check whether file has execute permission

# if [ -e $file_name ]
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found" 
# fi   


#How to append output to the end of text file
# echo -e "Enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then
#     if [ -w $file_name ]
#     then
#         echo "Type some text data. To quit press ctrl+d"
#         cat >> $file_name
#     else
#         echo "File do not have write permission"
#     fi
# else
#     echo "$file_name not exists" 
# fi   


# And operators 

# age=25

# if [ $age -gt 18 ] && [ $age -lt 30 ]
# or you can write and operatr as
#if [ $age -gt 18 -a $age -lt 30 ]
#if [[ $age -gt 18 && $age -lt 30 ]]
# then
#     echo "valid age"
# else
#     echo "age not valid"
# fi    

#OR operator

# age=25

# if [ $age -gt 18 ] || [ $age -lt 30 ]
# or you can write and operatr as
#if [ $age -gt 18 -o $age -lt 30 ]
#if [[ $age -gt 18 || $age -lt 30 ]]
# then
#     echo "valid age"
# else
#     echo "age not valid"
# fi 


#Arithmatic operations

# num1=20
# num2=5

# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))

# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 \* $num2 )
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 % $num2 )


#Floating point math operations in bash | bc command

# num1=20.5
# num2=5

# echo "20.5+5" | bc
# echo "20.5-5" | bc
# echo "20.5*5" | bc
# echo "scale=2;20.5/5" | bc
# echo "20.5%5" | bc

# echo "$num1+$num2" | bc

# num=27
# echo "scale=2;sqrt($num)" | bc -l
# echo "scale=2;3^3" | bc -l

#To check the bc manual type  man bc

# Case statement

# vehicle=$1

# case $vehicle in
#     "car" )
#         echo "Rent of $vehicle is 100 dollar" ;;
#     "van" )
#         echo "Rent of $vehicle is 80 dollar" ;;
#     "bicycle" )
#         echo "Rent of $vehicle is 5 dollar" ;;
#     "truck" )
#         echo "Rent of $vehicle is 150 dollar" ;;
#     * )
#         echo "Unknown Vehicle" ;;
# esac

# echo -e "Enter some character : \c"
# read value

# case $value in
#     [a-z] )
#         echo "User entererd $value a to z" ;;
#     [A-Z] )
#         echo "User entererd $value A to Z" ;;
#     [0-9] )
#         echo "User entererd $value 0 to 9" ;;
#     ? )
#         echo "User entererd $value special character" ;;
#     * )
#         echo "Unknown Input" ;;
# esac


#Array variables

# os=('ubuntu' 'windows' 'kali')
# os[3]='mac' #add element to array
# unset os[2] #remove element from array
# echo "${os[@]}"
# echo "${os[1]}"
# echo "${!os[@]}" #Prints indexes of array
# echo "${#os[@]}" #Prints length of array

# string=abcd 
# echo "${string[@]}" #taking variable as a array
# echo "${string[1]}" 
# echo "${string[0]}"  #taking variable as array always considers at the 0th index so 1st index will be blank in above case
# echo "${#string[@]}" #length 


#while loops

# n=1

# while [ $n -le 10 ]
# #while (( $n <= 10 ))
# do  
#     echo "$n"
#     n=$(( n+1 ))
#     # (( ++n ))
# done

#using sleep and open terminal with while loops

# n=1

# while [ $n -le 3 ]
# do  
#     echo "$n"
#     (( n++ ))
#     #sleep 1  # delay by 1 seconds to print
#     #gnome-terminal &  #opens three terminals
#     #xterm &
# done

#Read a file content in Bash

#using input redirection
# while read p
# do
#     echo $p
# done < test


# cat test | while read p
# do
#     echo $p
# done 

#IFS -Internal field separator

# while IFS=' ' read -r line  # -r prevents backslash escape to be interpretted by bash
# do
#     echo $line
# done < test

#until loops
# n=1

# until [ $n -ge 10 ]   #if condition is false then only commands are executed opposite of while loop
# do
#     echo $n
#     n=$(( n+1 ))
# done

#for loops


# for i in 1 2 3 4 5
# do
#     echo $i
# done


# for i in {1..10}
# do
#     echo $i
# done


# for i in {1..10..2} #START..END..INCEMENT
# do
#     echo $i
# done


# for (( i=0; i<5 ;i++ ))
# do
#     echo $i
# done

# for command in ls pwd date
# do
#     echo "....................$command.............."
#     $command
# done

# Primts items in a current directory
# for item in *
# do
#     if [ -d $item ]
#     then
#         echo $item
#     fi
# done


#Select loop gives output in form of menu to slect like 1) john 2) tom
# select name in mark john tom ben
# do 
#     echo "$name selected"
# done

# select name in mark john tom ben
# do 
#     case $name in
#     mark)
#         echo mark selected ;;
#     john)
#         echo john selected ;;
#     tom)
#         echo tom selected ;;
#     ben)
#         echo ben selected ;;           
#     *)
#         echo "Error please provide number between 1 to 4"
#     esac

# done

#break and continue statement

# for (( i=1; i<=10 ;i++ ))
# do
#     if [ $i -gt 5 ]
#     then
#         break
#     fi
#     echo $i
# done

# for (( i=1 ; i<=10 ; i++ ))
# do
#     if [ $i -eq 3 -o $i -eq 6 ]
#     then
#         continue
#     fi
#     echo $i
# done


#Functions

# function name(){
#     commands
# }

# name() {
#     Commands
# }

# function Hello(){
#     echo "Hello"
# }

# function print(){
#     echo $1 $2 $3
# }

# quit(){
#     exit
# }

# print Hello World Again

# Hello
# quit

# Local variables

# function print(){
#      name=$1
#     echo "the name is $name "
# }

# name="Tom"

# echo "The name is $name: Before"

# print Max

# echo "The name is $name: After"


# function print(){
#     local name=$1
#     echo "the name is $name "
# }

# name="Tom"

# echo "The name is $name: Before"

# print Max

# echo "The name is $name: After"


#Function example

# usage(){
#     echo "You need to provide and argument : "
#     echo "usage : $0 file_name"
# }

# is_file_exist(){
#     local file="$1"
#     [[ -f "$file" ]] && return 0 || return 1

# }

# [[ $# -eq 0 ]] && usage

# if ( is_file_exist "$1" )
# then
#     echo "File found"
# else
#     echo "File not found"
# fi

# Readonly command

# var=31
# readonly var

# var=50
# echo "var => $var"

# hello(){

#     echo "Hello World"
# }

# readonly -f hello

# #Cant overide the function
# hello(){
#     echo "Hello World again"
# }

#List of readonly variables
# readonly -p

# List of readonly functions
#readonly -f


#Signals and Traps

# echo "pid is $$"
# while (( COUNT < 10 ))
# do  
#     sleep 10
#     (( COUNT ++ ))
#     echo $COUNT
# done
# exit 0

# trap "echo Exit command is detected" 0
# echo "Hello World"
# exit 0

# trap "echo Exit signal is detected" SIGINT
# echo "pid is $$"
# while (( COUNT < 10 ))
# do  
#     sleep 10
#     (( COUNT ++ ))
#     echo $COUNT
# done
# exit 0

#How to debug a bash script

# set -x  #Start debugging from this point you have written
# trap "echo Exit signal is detected" SIGINT
# echo "pid is $$"
# set +x  #deactivates the debugging
# while (( COUNT < 10 ))
# do  
#     sleep 10
#     (( COUNT ++ ))
#     echo $COUNT
# done
# exit 0


#Show all variables in system
#declare -p

#creates your variable
#declare myvariabl=22

#Readonly variable
# declare -r pwdfile=/etc/password
# echo $pwdfile

#Sending email via script
# First install ssmtp
#sudo apt install ssmtp
#Do the changes in /etc/ssmtp/ssmtp.conf file below details

#root=nitinmatani22@gmail.com
# mailhub=smtp.gmail.com:587
# AuthUser=nitinmatani22@gmail.com
# AuthPass=
# UseSTARTTLS=yes

#after this change the settings in your google account enable Less Secure app access to on from security tab
#ssmtp nitinmatani22@gmail.com

#Now run the script and give 
#To:nitinmatani22@gmail.com
#From:nitinmatani22@gmail.com
#CC:
#Subject:Test
#This is body
#Press Ctrl +D  you will recieve mail

#grep

# echo "Enter filename to search text from"
# read filename

# if [[ -f $filename ]]
# then
#     echo "Enter the text to search"
#     read grepvar
#     grep -i -n -c -v $grepvar $filename # -i to remove case sensitivity,-n line number, -c number of occurences of letter, -v -number of lines which doesnt contain the word entered
# else
#     echo "$filename doesn't exist"

# fi


#awk -Scripting language for manipulating data and generating reports 
#It is utility which can be used in bash to write tiny programs
#You can scan a file by line,You can split each input line into fields,actions on matched lines 
#awk transforms data files and produces reports
#it can be used with bash script and also as a separate awk file

# echo "Enter filename to print from awk"
# read filename

# if [[ -f $filename ]]
# then
#     #awk '{print}' $filename
#     #awk '/Windows/ {print}' $filename
#     #awk '/Windows/ {print $2,$1}' $filename #Prints 2nd and 1st word of lines which contains Window

# else
#     echo "$filename doesn't exist"

# fi 


#sed -Stream editor and used for maniputaing text files and subsituting purposes
# echo "Enter filename to subsitute using sed"
# read filename

# if [[ -f $filename ]]
# then
#      #cat sedfile.txt | sed 's/i/I/g'  # s-subsitute  i is the letter to be subsituted with I ,g is for global replaces all occurences of i to I
#      #sed 's/i/I/g' $filename #this just gives the output it doesnt actually do changes in the file
#      #sed 's/i/I/g' $filename > newsedfile.txt # this does the changes nd copies in new file
#     #sed -i 's/i/I/g' $filename  #Modifies the file and you cant undo it by providing a flag -i
# else
#     echo "$filename doesn't exist"

# fi 

