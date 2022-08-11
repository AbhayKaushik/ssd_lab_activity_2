# Count the number of lines in the file 
lines=$(cat $1 | wc -l)
# echo $lines
lines=$((lines + 1))
# Find the middle line number 
middle=$((lines / 2))


# echo $middle

# # Print when you reach the middle line 
# cat $1 | awk '{if(NR==$((lines/2)))print $0}'
# cat $1 | awk 'BEGIN{wc -l "$1"} {if(NR==$middle)print $middle} END{print "End"}'
# # cat $1 | awk '{if(NR==5)print $0}'
#
# cat $1 | awk 'BEGIN{l=1} {print l" "$0; l++}' | awk '/^$middle/{print substr($0, 3)}'
#
# echo "==="
# cat $1
#
# echo "===="
#
# file=$(cat $1)
# # echo $file
# i=1 
#
# for l in file
# do
#   if [[ "$i" -eq "$middle" ]]
#   then
#     echo $l
#   fi
#   echo $i
#   i=$((i + 1))
# done 
#

# Get all the lines including the middle and then select the last line of the output
head -n $middle $1 | tail -n 1 

