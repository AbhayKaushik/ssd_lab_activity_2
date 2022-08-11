# cat /etc/shells | awk -F "\/" '{print $1}' 
# cat /etc/shells 
# echo "====="

# Select the lines that begin with /usr/ and then print the last part of the text
cat /etc/shells | awk  '/^\/usr/{print $1}' | grep -oE "[a-zA-Z-]+$"

# echo "===="
# cat /etc/shells | awk  'BEGIN{FS="/"} /^\/usr/{print $1 $2 $3 $4}'
# cat /etc/shells | awk  'BEGIN{FS="/"} /^\/usr/{print $NF}' #| grep -oE "[a-zA-Z-]+$"

