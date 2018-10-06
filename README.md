# RootHelper
Roothelper will aid in the process of privilege escalation on a Linux system that has been compromised, by fetching a number of enumeration
and exploit suggestion scripts. The latest version downloads five scripts. Two enumeration shellscripts, one information gathering shellscript and two exploit suggesters, one written in perl and the other one in python.

The credits for the scripts it fetches go to the original authors.

## Update

`SBD` or Static Binary Deployer has been added to the tools available for download with RootHelper.

`BashArk`; a post-exploitation tool. Is now available for download with RootHelper. The author of this tool is accredited for their work under the 'Acknowledgements' header a little further down in this README.md.

A new version of `Linux Exploit Suggester` has been released. It is an updated version based on the old one by PenturaLabs. The author of this tool and others available through RootHelper are accredited for their work below.



# Priv-Esc scripts

```
LinEnum
```
Shellscript that enumerates the system configuration.
```
unix-privesc-check 
```
Shellscript that enumerates the system configuration and runs some privilege escalation checks as well.
```
BashArk
```
BashArk is post exploitation tool written in Bash.

```
Firmwalker
```
Shellscript that gathers useful information by searching the mounted firmware filesystem. For things such as SSL and web server related files, config files, passwords, common binaries and more. 
```
linuxprivchecker
```
A python implementation to suggest exploits particular to the system that's been compromised.

```
Linux_Exploit_Suggester
```
A perl script that that does the same as the one mentioned above.

```
SBD
```
SBD Makes it possible to deploy static binaries of common (and less common) Linux utilities that mightn otherwise be unavailable.

# Usage

To use the script you will need to get it on the system you've compromised with utilities such as `git` or `wget` depending on what is available to you on that particular system. From there you need to make it executable with `chmod +x roothelper.sh` After which run it and it will show you the options available and an informational message regarding the options. For clarity i have posted it below as well.

```
The 'Help' option displays this informational message.

The 'Download' option fetches the relevant files and places them in the /tmp/ directory.

The option 'Download and unzip' downloads all files and extracts the contents of zip archives to their individual subdirectories respectively, please
note; if the 'mkdir' command is unavailable however, the operation will not succeed and the 'Download' option should be used instead

The 'Clean up' option removes all downloaded files and 'Quit' exits roothelper.
```
### Note

There's another script on my Github that follows the general principles of this script however it aims to be more comprehensive with regards to it's capabilities. Besides downloading scripts that aid in privilege escalation on a Linux system it also comes with functionality to enumerate the system in question without first having to download any other external tools. It can also search for cleartext credentials and more. It could be considered RootHelper's sister script with an increased richness of features, it can be found by clicking [here](https://github.com/NullArray/Bash-Kit-Multitool). If you prefer a minimalsist approach, I got you covered, since both scripts will continue to be maintained and updated for the foreseeable future.


### Acknowledgements

Credits for scripts RootHelper fetches go to their original authors.

[LinEnum](https://github.com/rebootuser/LinEnum) by [RebootUser](https://github.com/rebootuser)

[Firmwalker](https://github.com/craigz28/firmwalker) by [Craigz28](https://github.com/craigz28)

[BashArk](https://github.com/TheSecondSun/Bashark) by [TheSecondSun](https://github.com/TheSecondSun)

[Linux Priv Checker](http://www.securitysift.com/download/linuxprivchecker.py) by [SecuritySift](http://www.securitysift.com)

[Linux Exploit Suggester](https://github.com/jondonas/linux-exploit-suggester-2) by [Jondonas](https://github.com/jondonas)

[Unix Priv-Esc Check](https://github.com/pentestmonkey/unix-privesc-check) by [Pentestmonkey](https://github.com/pentestmonkey)

[SBD](https://github.com/NullArray/SBD) by [Me](https://github.com/NullArray)


