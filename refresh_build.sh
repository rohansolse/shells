#!/bin/bash

if [ "$1" != "" ]; then
        file_name='backup_s2_dashboard_'$(date '+%Y%m%d%H%M%S').zip
        zip -r $file_name dist services middleware.js app.js utils routes package.json email-templates bin public
        rm -rf dist services middleware.js app.js utils routes package.json email-templates bin public
        mv $file_name /vms/simplika/backup/
        unzip $1
        rm -rf $1
        forever restartall
else
        echo "pass zip file"
fi
