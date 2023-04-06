# OCIScripts
Made to keep OCI from deleting my ForeverFree tier instance


I only made this script, because Oracle told me they would delete my instance in their cloud, if - during a 7 day period - the following were true:
* CPU utilization for the 95th percentile is less than 10%
* Network utilization is less than 10%
* Memory utilization is less than 10% (applies to A1 shapes only)”"

That sucks. Because i host a wiki server with them. And i am very excited about all the stuff you get from OCI ForeverFree tier.
However, the workload i run is low. But very useful to my household. Basically, i am using the VM provided by Oracle, as a Wiki server.

I do not do this, to be an ass towards Oracle. As a matter of fact, i think that this is against any reasonable "fair use"-policy(i never investigated if Oracle has one).
As well as a bad solution for the climate. No matter how you look at it, the script that is designed to do nothing else, than waste ressouces. And by that, waste power to. It doesn't matter that the power is free, and delivered by Oracle. It does not come out of nowhere.
As soon as i hear other possible strategies from OCI, i'll be adjusting this approach.

## Now, what does the script do?

It basically just writes random numbers to /dev/null. And is scheduled to run with cron.
It also keeps a log of all the pointless work it has done... :-|
When the logfile hits 1MB filesize, the script cleans it.
The script attempts to keep your usage above the requirements, outlined by OCI. This would, for the CPU waster alone, mean 10% CPU.

* cpuUser.sh - Is the CPU-"waster".
* cpuUserArray.sh - Is another "waster", that consumes memory to.
* startPointlessProcesses.sh - is the "manager". It spawns x processes, defined in its "while" loop. Currently, that is 5.
* cron - Is just to indicate how to add this to Cron, if you want to run 5 wasters, every minute.

You will need to tweak the manager(startPointlessProcesses.sh), so that the wasters does not render your system inoperable.
The tricks i use, is running it through crontab only. This way, i'll be able to reboot and disable the runaway wasters, by modifying crontab, in case of a system lock.


## Useful commands:

tail -f /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log
 - Monitors the log file, to see how often it completes a cycle. Useful for tweaking the system, and getting the ratio of wasters vs. crontab runs right

 top / htop
  - Useful for seeing how much CPU is being used, every run

crontab -e
 - Edit crontab to fire at your liking. The cron help in this project, fires the job every minute.


## Notes:
I found, that for my specific needs, running the CPU waster is enough. As i already run a Docker instance, that consumes the memory i need, to stay within the parameters of OCI's guide.
