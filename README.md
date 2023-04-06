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

Now, what does the script do?

It basically just writes random numbers to /dev/null. And is scheduled to run with cron.
It also keeps a log of all the pointless work it has done... :-|
When the logfile hits 1MB filesize, the script cleans it.

* cpuUser.sh - Is the "waster"
* startPointlessProcesses.sh - is the "manager". It spawns x processes, defined in its "while" loop. Currently, that is 5.
* cron - Is just to indicate how to add this to Cron, if you want to run 5 wasters, every minute.


I dont really need questions like "Why don't you just mine bitcoin".
As you can read on like 13 & 14, my core values tells me, that it's already wrong to abuse ressources like this. I'd never resort to Bitcoin mining.
... yes.. mining bitcoin would be more useful and profitable than sending random-generated numbers to nothing.. But also, more wrong. 


Next TODOs:
Make the script more memory intensive..
 - Perhaps save the generated numbers in an array, or a more complex list of sorts(only goal being more overhead), so the results accumulates in RAM, vs. being garbage collected rather fast..
