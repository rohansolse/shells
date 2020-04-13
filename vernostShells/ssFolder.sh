cd ../Pictures/
if [ $1 ]; then
    mkdir "$(date +"%m-$1-%Y")"
else
    mkdir "$(date +"%m-%d-%Y")"
fi
cd ../jp/
