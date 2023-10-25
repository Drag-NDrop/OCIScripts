# OCIScripts
Made to keep OCI from deleting my ForeverFree tier instance

Latest news:
I am currently researching better options, for current and future users of this repository. I want the processing power we waste, to matter. I no longer see this project as a viable path. And i want to avoid Oracle saying "This is why we cannot have nice free things".
Along for the ride, is CodyCody31, and a few bright minds from the Folding@Home community.
The research right now, has led us to the BOINC project, which many legit actors seems to use, when they have a need to tap into volunteer processing power. The main objective right now, is to find a BOINC project, which has small size Work Units, and enough work for all of us.
Thanks to SSB22, from the Issues-section and Zeke from Folding@Home and especially CodyCody31, for helping guiding this project.

Alternatives to this script suite:
Codycody made a great upgrade of the script suite, and the extensive documentation he's written, is certainly worth reading.
As of writing, i deem his project to be more complete than the one you're browsing now. So give his repo a shot, if you're looking to solve a usecase:
https://github.com/Codycody31/Prevent-OCI-Deletion-for-being-idle/blob/master/startPointlessProcesses.sh


As a bright mind pointed out, Folding@Home is a great alternative to putting CPU cycles to use, rather than dissolving them in /dev/null.
In not to long, the repo you're browsing now, will try to support a F@H Setup.
https://foldingathome.org/



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
You might also need to tweak the wasters. The perfect scenario for you, would be to keep memory usage and CPU usage, just above 10%.

One of the tricks i use, to avoid a complete deadlock, is running it through crontab only. This way, i'll be able to reboot and disable the runaway wasters, by modifying crontab, in case of a system lock.


## Useful commands:

tail -f /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log
 - Monitors the log file, to see how often it completes a cycle. Useful for tweaking the system, and getting the ratio of wasters vs. crontab runs right

 top / htop
  - Useful for seeing how much CPU is being used, every run

crontab -e
 - Edit crontab to fire at your liking. The cron help in this project, fires the job every minute.


## Notes:
I found, that for my specific needs, running the CPU waster is enough. As i already run a Docker instance, that consumes the memory i need, to stay within the parameters of OCI's guide.
