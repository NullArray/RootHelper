#!/bin/bash

function usage()
{ printf "%b \a\n\nRoothelper will aid in the process of privilege escalation on a Linux system you compromised by fetching a number of enumeration
and exploit suggestion scripts. Below is a quick overview of the available options.

The 'Help' option displays this informational message.

The 'Download' option fetches the relevant files and places them in the /tmp/ directory.

The option 'Download and unzip' downloads all files and extracts the contents of zip archives to their individual subdirectories respectively, please
note; if the 'mkdir' command is unavailable however, the operation will not succeed and the 'Download' option should be used instead

The 'Clean up' option removes all downloaded files and 'Quit' exits roothelper.\n "
}

# Declare destination directory
rh_dest="/tmp"

# Declare associative array for the helpers
declare -A RHelpers

# Assign helpers to download locations
RHelpers['ExploitSuggest.py']="http://www.securitysift.com/download/linuxprivchecker.py" 
RHelpers['sbd.zip']="https://github.com/NullArray/SBD/archive/master.zip" 
RHelpers['AutoRoot.zip']="https://github.com/nilotpalbiswas/Auto-Root-Exploit/archive/master.zip" 
RHelpers['LinEnum.zip']="https://github.com/rebootuser/LinEnum/archive/master.zip" 
RHelpers['Bashark.zip']="https://github.com/TheSecondSun/Bashark/archive/master.zip" 
RHelpers['ExploitSuggest_perl.zip']="https://github.com/jondonas/linux-exploit-suggester-2/archive/master.zip" 
RHelpers['unixprivesc.zip']="https://github.com/pentestmonkey/unix-privesc-check/archive/1_x.zip" 

# Download
function rh_download()
{
    for h in "${!RHelpers[@]}"; do
        wget -nv -O "${rh_dest}/$h" "${RHelpers[$h]}"
    done
}

# Download and unzip
function dzip()
{
    echo "Downloading and extracting scripts..."
    rh_download
   
    cd "$rh_dest"
    for h in "${!RHelpers[@]}"; do
        # Get the name without .zip
        h_name="${h%%.zip}"

        # If it was not a .zip, $h_name will equal $h, so we skip it
        [ "$h_name" == "$h" ] && continue

        if mkdir "$h_name"
        then
            if pushd "$h_name"
            then
                unzip "../$h"
                popd
                rm -f "$h"
            else
                echo "Could not unpack $h - cd failed"
            fi
        else
            echo "Could not unpack $h - mkdir failed"
        fi
    done
}

function rh_clean()
{
    for h in "${!RHelpers[@]}"; do
        # Get the name without .zip
        h_name="${h%%.zip}"

        [ -f "$rh_dest/$h" ] && rm "$rh_dest/$h"
        [ -d "$rh_dest/$h_name" ] && rm -r "$rh_dest/$h_name"
    done
}

usage

printf "%b" "\a\n\nTo use roothelper please select an option below.:\n"

PS3='Please enter your choice: '
options=("Help" "Download" "Download and unzip" "Clean up" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Help")
            usage
            printf "%b \n"
            ;;
        "Download")
            echo "Downloading scripts to $rh_dest"
            rh_download
            printf "%b \n"
            ;;
        "Download and unzip")
            dzip
            printf "%b \n"
            ;;
         "Clean up")
            echo "Removing downloaded files"
            rh_clean
            printf "%b \n"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
  
