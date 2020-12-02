# RootHelper
Roothelper will aid in the process of privilege escalation on a Linux system that has been compromised. The latest version totals eleven scripts. From enumeration to exploit suggestion to exploit deployment. RootHelper ensures you have access to the best tools for the job.

The credits for the scripts it fetches go to their original authors.

## Update

Latest update has added a brand new Helper script. Details below. 

RootHelper now supports command line arguments/flags.

The `-q` or `--quiet` flag supresses the `usage` print function on execution. Therefore you can now simply pass `-q` and be taken directly to the menu.

The `-f` or `--fast` flag immediately starts the execution of the script's `download` option. If time is of the essence the `-f` flag will hurry things along.

### Latest Helper Scripts

The latest addition to the scripts available through RootHelper is `rootend.py`. It's a python3 implementation that automates
enumeration and privilege escalation operations.

`RedGhost` Is from now on available with RootHelper, it's a Linux post-exploitation framework and payload generator.

`Linux Smart Enumeration` Is available with RootHelper. It's a tool based on LinEnum but with a heavy focus on the privilege escalation aspect that enumeration tools provide.

`SBD` or Static Binary Deployer has been added to the tools available for download with RootHelper. For details on this utility find my repo [here](https://github.com/NullArray/SBD)

`Auto-Root-Exploit` Is now available through RootHelper.

`BashArk`; a post-exploitation tool. Is now available for download with RootHelper.

A new version of `Linux Exploit Suggester` has been released. It is an updated version based on the old one by PenturaLabs. The author of this tool and all others available through RootHelper are accredited for their excellent work below.



# Priv-Esc scripts

```
LinEnum
```
Shellscript that enumerates the system configuration.
```
Linux Smart Enumeration
```
LinEnum fork with a heavy focus on privilege escalation.

```
unix-privesc-check 
```
Shellscript that enumerates the system configuration and runs some privilege escalation checks as well.

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
SBD Makes it possible to deploy static binaries of common (and less common) Linux utilities that might otherwise be unavailable.

```
Auto-Root-Exploit
```
Auto-Root-Exploit is a shell script that downloads and executes all known publically available exploits from [Exploit-DB](https://www.exploit-db.com/) for the system and kernel version you specify via the tool's command-line arguments.

```
BashArk
```
BashArk is post exploitation tool written in Bash.

```
Firmwalker
```
Shellscript that gathers useful information by searching the mounted firmware filesystem. For things such as SSL and web server related files, config files, passwords, common binaries and more.

```
RedGhost
```
Linux post exploitation framework designed to assist in persistence, reconnaissance, privilege escalation and leaving no trace. 

```
rootend
```
Rootend automates enumeration and privilege escalation operations by targetting a wide range of potential exploitation catagories. It does so by looking for SUID bit enabled binaries. Weak permissions on security critical components, finding PHP Configuration files and much more.


# Usage

To use the script you will need to get it on the system you've compromised with utilities such as `git` or `wget` depending on what is available to you on that particular system. From there you need to make it executable with `chmod +x roothelper.sh` After which run it and it will show you the options available and an informational message regarding the options. For clarity i have posted it below as well.

```
The 'Help' option displays this informational message.

The 'Download' option fetches the relevant files and places them in the /tmp/ directory.

The option 'Download and unzip' downloads all files and extracts the contents of zip archives to their individual subdirectories respectively, please
note; if the 'mkdir' command is unavailable however, the operation will not succeed and the 'Download' option should be used instead

The 'Clean up' option removes all downloaded files and 'Quit' exits roothelper.
```

### Acknowledgements

Special thanks to [DiegoTreitos](https://github.com/diego-treitos) for his efforts in optimizing RootHelper's source code.


Credits for scripts RootHelper fetches go to their original authors.

[rootend](https://github.com/twelvesec/rootend) by [nickvourd](https://github.com/nickvourd) and [Maldevel](https://github.com/maldevel) from [TwelveSec](https://github.com/twelvesec).

[RedGhost](https://github.com/d4rk007/RedGhost) by [d4rk007](https://github.com/d4rk007)

[linux-smart-enumeration](https://github.com/diego-treitos/linux-smart-enumeration) by [DiegoTreitos](https://github.com/diego-treitos)

[LinEnum](https://github.com/rebootuser/LinEnum) by [RebootUser](https://github.com/rebootuser)

[Firmwalker](https://github.com/craigz28/firmwalker) by [Craigz28](https://github.com/craigz28)

[Auto-Root-Exploit](https://github.com/nilotpalbiswas/Auto-Root-Exploit) by [nilotpalbiswas](https://github.com/nilotpalbiswas)

[BashArk](https://github.com/TheSecondSun/Bashark) by [TheSecondSun](https://github.com/TheSecondSun)

[Linux Priv Checker](http://www.securitysift.com/download/linuxprivchecker.py) by [SecuritySift](http://www.securitysift.com)

[Linux Exploit Suggester](https://github.com/jondonas/linux-exploit-suggester-2) by [Jondonas](https://github.com/jondonas)

[Unix Priv-Esc Check](https://github.com/pentestmonkey/unix-privesc-check) by [Pentestmonkey](https://github.com/pentestmonkey)



