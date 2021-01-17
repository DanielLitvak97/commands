#!/bin/bash

while true; do

timeSTR=$(ping -c1 cws.checkpoint.com | grep -o 'time=[0-9]*')

time="${timeSTR#*=}"

if [ "$time" -gt 2 ]; then

  echo $time $(date) >> /storage/ping_results.txt

fi

done

 

chmod +x akaza.sh

bin akaza.sh

 

-eq

-ne

-lt

-le

-gt

-ge

 

#!/bin/bash

 

a="/etc"

b="/os-release"

c=$a$b

echo $c

 

echo "your working directory is $(pwd)"

 

OUTPUT=$(pwd)

echo "your working director is ${output}"

 

echo "Enter a value:  "

read UserInput

echo "you just entered ${UserInput}"

#read -p "Enter a value: " VALUE1

#echo "hello $VALUE, nice to meet you"

 

 

#check if file exists and a directory

 

if [ -d /storage/what ]; then

echo "its there"

else

echo "not there"

fi

 

if [ $((${1} + 2)) -eq 0 ]; then

echo "Even"

else

echo "odd"

fi

 

 

echo $((3+3))

echo $((3/2)) --> answer will be always in integer

 

find /storage -name *.conf

/dev/null

 

Length:

dddd="111"

echo ${#dddd}

 

·         >AA.txt we  can do that instead of "touch"

 

h="renogkovsakaza"

echo ${h:3}

ogkovsakaza

echo ${h:3:1}

o

echo ${h:3:3}

ogk

 

 

 

 

 

 

 

STD

 

&> This is STDERR and STDOUT

1> STDIN

2> STDOUT

&>  is 2>&1

 

 

Whenever you execute a program, the operating system always opens three files, standard input, standard output, and standard error as we know whenever a file is opened

 

So 2>&1 simply says redirect standard error to standard output.

& means whatever follows is a file descriptor, not a filename.

 

for i in $(seq 10)

do

echo "value is: $i"

done

 

for i in $(ls -la)

do

echo "folder is: $i"

done

 

 

 

 

 

 

NAME="Brad"

if [ "$NAME" == "Brad" ]

then

echo "your name is Brad"

elif [ "$NAME" == "Jack" ]

then

echo "1"

fi

 

 

NUM1=1

NUM2=2

if [ "$NUM1" -gt "$NUM2" ]

then

echo "$NUM1 is greater than num2"

fi

 

FOR

NAMES="hello there yes"

for NAME in $NAMES

do

  echo "$NAME"

done

 

 

FILES=$(ls *.txt)

for FILE in $FILES

do

  echo "renaming files"

  mv $FILE new-$FILE

done

 

WHILE

LINE=1

while read -r CURRENT_LINE

do

  echo "Line $LINE: $CURRENT_LINE"

  ((LINE++))

done < "new-new-rengoko.txt"

 

 

N=1

 

while [ $N -le 10 ]

do

  echo "$N is"

((N++))

#n=$(( n+1 ))

done

 

$ ls -l file_doesnot_exists > /dev/null
ls: cannot access file_doesnot_exists: No such file or directory

Despite I'm redirecting output to /dev/null, it is printed in the terminal. It is because we are not redirecting error output to /dev/null, so in order to redirect error output as well, it is required to add 2>&1:

$ ls -l file_doesnot_exists > /dev/null 2>&1

