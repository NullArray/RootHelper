# RootHelper
Roothelper will aid in the process of privilege escalation on a Linux system you compromised by fetching a number of enumeration
and exploit suggestion scripts. The latest version downloads four scripts. Two enumeration shellscripts and two exploit suggesters, one written in perl and the other one in python.

The credits for the scripts it fetches go to the original authors.



# Priv-esc scripts

```
LinEnum
```
Shellscript that enumerates the system configuration.

```
unix-privesc-check
```
Shellscript that enumerates the system configuration and runs some privilege escalation checks as well.

```
linuxprivchecker
```
A python implementation to suggest exploits particular to the system you've compromised.

```
Linux_Exploit_Suggester
```
A perl script that that does the same as the one mentioned before.

# Usage

To use the script you will need to get it on the system you've compromised, from there you can simply run it and it will show you the options available and an informational message regarding the options. For clarity i will post it below as well.

```
The 'Help' option displays this informational message.

The 'Download' option fetches the relevant files and places them in the /tmp/ directory.

The option 'Download and unzip' downloads all files and extracts the contents of zip archives to their individual subdirectories respectively, please
note; if the 'mkdir' command is unavailable however, the operation will not succeed and the 'Download' option should be used instead

The 'Clean up' option removes all downloaded files and 'Quit' exits roothelper.
```



Credits for the other scripts go to their original authors.

https://github.com/rebootuser/LinEnum

https://github.com/PenturaLabs/Linux_Exploit_Suggester

http://www.securitysift.com/download/linuxprivchecker.py

https://github.com/pentestmonkey/unix-privesc-check
