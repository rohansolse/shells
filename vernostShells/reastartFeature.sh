echo "***** You Wanted to Restart : $1"
fid=`forever list | grep "$1" | awk '{print $2}'`
echo -e "***** PID's i got for selected feature are : \n$fid"
newfid=($(echo "$fid" | tr --delete []))
for u in "${newfid[@]}"
do
    echo -e "\n***** Restarting $u *****\n"
    forever restart "$u"
done