echo "Please let me know which build you want [ business | dao | connector | frontend | all ]: \c"
read toBuild
echo "You Selected: $toBuild"
#To create directory
if [ ! -d builds ]
then
    mkdir builds
fi
#Create Business build
if [ $toBuild = "business" ] || [ $toBuild = "all" ]
then
    echo "Start creating Business Build"
    cd ubweb/Connector/Airlines-buisness
    webpack
    cd build
    cp businessapp.js ../../../../builds
    cd ../../../../
    echo "Build for business is created"
fi
#Create Connector build
if [ $toBuild = "connector" ] || [ $toBuild = "all" ]
then
    echo "Start creating Connector Build"
    cd ubweb/Connector/Airlines-Connector
    webpack
    cd build
    cp connectorapp.js ../../../../builds
    cd ../../../../
    echo "Build for connector is created"
fi
#Create Dao Build
if [ $toBuild = "dao" ] || [ $toBuild = "all" ]
then
    echo "Start creating Dao Build"
    cd ubweb/Connector/Airlines-DAO
    webpack
    cd build
    cp daoapp.js ../../../../builds
    cd ../../../../
    echo "Build for dao is created"
fi
#Create Frontend Build
if [ $toBuild = "frontend" ] || [ $toBuild = "all" ]
then
    echo "Start creating Frontend Build"
    cd ubweb
    npm run build:ssr
    zip -r ubdist.zip dist node_modules
    cp ubdist.zip ../builds
    cd ..
    echo "Build for Frontend is created"
fi