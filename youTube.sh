echo "$1"

if [ "$1" = "m" ]; then 
    j=1
    while [ $j -le 20 ]
    do
        i=1
        while [ $i -le 10 ]
        do
            echo $i
            google-chrome --disable-gpu --disable-software-rasterizer https://www.youtube.com/watch?v=JY9feEVWop0&list=PLlqv7zE_bI8_-DiSwnNya_4N1sMSRjvmW
            sleep 2
            i=$(($i+1))
        done
        sleep 500
        pkill -o chrome
    done  
else 
    i=1
    while [ $i -le 20 ]
    do
        echo $i
        google-chrome --disable-gpu --disable-software-rasterizer https://www.youtube.com/watch?v=JY9feEVWop0&list=PLlqv7zE_bI8_-DiSwnNya_4N1sMSRjvmW
        sleep 2
        i=$(($i+1))
    done
    sleep 1000
    pkill -o chrome
fi