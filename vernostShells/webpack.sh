echo "Please let me know which build you want [business | dao | connector | frontend | all]: "
read toBuild
echo "You Selected: $toBuild"
#To create directory
if [ ! -d builds ]
then
    mkdir builds
fi
if [ $toBuild = "business" ] || [ $toBuild = "all" ]
then
    echo "Start creating Business Build"
    cd ubweb/Connector/Airlines-buisness
    rm -rf build/
    webpack
    cd build
    cp businessapp.js ../../../../builds
    cd ../../../../
    echo "Build for business is created"
fi
if [ $toBuild = "connector" ] || [ $toBuild = "all" ]
then
    echo "Start creating Connector Build"
    cd ubweb/Connector/Airlines-Connector
    rm -rf build/
    webpack
    cd build
    cp connectorapp.js ../../../../builds
    cd ../../../../
    echo "Build for connector is created"
fi
if [ $toBuild = "dao" ] || [ $toBuild = "all" ]
then
    echo "Start creating Dao Build"
    cd ubweb/Connector/Airlines-DAO
    rm -rf build/
    webpack
    cd build
    cp daoapp.js ../../../../builds
    cd ../../../../
    echo "Build for dao is created"
fi