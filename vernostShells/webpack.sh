echo "\e[36m ***** Please let me know which build you want [ business | dao | connector | frontend | all ] :\e[0m \c"
read toBuild
echo "\e[36m ***** You Selected :\e[0m $toBuild"
#To create directory
if [ ! -d builds ]
then
    mkdir builds
fi
#Create Business build
if [ $toBuild = "business" ] || [ $toBuild = "all" ]
then
    echo "\e[36m ***** Start creating Business Build. ***** \e[0m"
    cd ubweb/Connector/Airlines-buisness
    webpack
    cd build
    if [ -f businessapp.js ]
    then
        cp businessapp.js ../../../../builds
    fi
    cd ../../../../
    echo "\e[36m ***** Build for business is created. ***** \e[0m"
fi
#Create Connector build
if [ $toBuild = "connector" ] || [ $toBuild = "all" ]
then
    echo "\e[36m ***** Start creating Connector Build. ***** \e[0m"
    cd ubweb/Connector/Airlines-Connector
    webpack
    cd build
    if [ -f connectorapp.js ]
    then
        cp connectorapp.js ../../../../builds
    fi
    cd ../../../../
    echo "\e[36m ***** Build for connector is created. ***** \e[0m"
fi
#Create Dao Build
if [ $toBuild = "dao" ] || [ $toBuild = "all" ]
then
    echo "\e[36m ***** Start creating Dao Build. ***** \e[0m"
    cd ubweb/Connector/Airlines-DAO
    webpack
    cd build
    if [ -f daoapp.js ]
    then
        cp daoapp.js ../../../../builds
    fi
    cd ../../../../
    echo "\e[36m ***** Build for dao is created. ***** \e[0m"
fi
#Create Frontend Build
if [ $toBuild = "frontend" ] || [ $toBuild = "all" ]
then
    echo "\e[36m ***** Start creating Frontend Build. ***** \e[0m"
    cd ubweb
    npm run build:ssr
    echo "\e[36m ***** Do you want to make zip with 'node_modules' ( yes | no ):\e[0m \c"
    read answer
    echo "\e[36m ***** You selected :\e[0m $answer"
    if [ $answer = "yes" ]
    then
        echo "\e[36m ***** Creating Build with node_modules. ***** \e[0m"
        zip -r ubdist.zip dist node_modules
    else
        echo "\e[36m ***** Creating Build without node_modules. ***** \e[0m"
        zip -r ubdist.zip dist
    fi
    if [ -d ubdist.zop ]
    then
        cp ubdist.zip ../builds
    fi
    cd ..
    echo "\e[36m ***** Build for Frontend is created. ***** \e[0m"
fi