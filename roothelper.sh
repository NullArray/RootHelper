#!/bin/bash
 
DONE=$1
PATH="/tmp/"

if [ "$DONE" == "" ]
then
    echo "Downloading and extracting scripts, when ready execute script with arg $1 to remove files"
    `wget -O /tmp/file1.zip https://github.com/rebootuser/LinEnum/archive/master.zip`                  
    `wget -O /tmp/file2.zip https://github.com/PenturaLabs/Linux_Exploit_Suggester/archive/master.zip`  
    `wget -O /tmp/file3.zip https://github.com/pentestmonkey/unix-privesc-check/archive/1_x.zip`   
    for zip in *.zip
    do
        dirname=`echo $zip | sed 's/\.zip$//'`
        if mkdir $dirname
        then
            if cd $dirname
            then
                unzip ../$zip
                cd ..
                rm -f $zip
            else
                echo "Could not unpack $zip - cd failed"
            fi
        else
            echo "Could not unpack $zip - mkdir failed"
        fi
        exit 1
    done
else
    echo ""Removing scripts""
    find $PATH/* -exec rm {} \;
    exit 2
fi
