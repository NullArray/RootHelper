# Root Helper
Root Helper is s simple bash script that i wrote to make it a little easier to to find vectors for privilege escalation on a Linux box. I made it so that it downloads three scripts firectly from github. Namely:

```
LinEnum
```

To enumerate the system configuration

```
Linux_Exploit_Suggester
```

To suggest any exploits particular to that system, and

```
unix-privesc-check
```

To run a couple of privilege escalation cecks.

To use the script you will need to get it to the box and run it without argyments. All the scripts get downloaded to the /tmp/ directory and when you're done using them you can run roothelper.sh with an argument to remove everything that was downloaded to that directory again. In example:

```
roothelper.sh done
```

And you're set. The credit for the other scripts/tools go to the original authors.

https://github.com/rebootuser/LinEnum

https://github.com/PenturaLabs/Linux_Exploit_Suggester

https://github.com/pentestmonkey/unix-privesc-check
