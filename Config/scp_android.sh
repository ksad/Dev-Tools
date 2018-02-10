#!/bin/bash

### DEVICE INFORMATION CONFIGURED IN SSH CONFIG ###
#SSH_KEY='~/.ssh/p10_android.key'
#HOST=192.168.1.13
#USER='root'
#PORT=1999
#scp -i $SSH_KEY -P $PORT "$FILES_LIST" $USER@$HOST:$DEFAULT_PATH

HOST='p10'
DEFAULT_PATH='/storage/A0A9-3F4D/MY_DATA'

FILES=$(zenity --file-selection --multiple --title="Select files ..." --filename=$HOME/$USER/ 2>/dev/null &)

#FILES_LIST=$(echo "$FILES" | sed 's,|, ,g')
#echo $FILES_LIST

IFS='|' read -a files_array <<< "${FILES}"

for i in "${files_array[@]}"
do     
	#echo "$i"
	scp "$i" $HOST:$DEFAULT_PATH
done

