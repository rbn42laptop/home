#!/bin/bash
echo There is the systems total file descriptor limit, what do you get from the command
echo "<in_use> <unused_but_allocated> <maximum>"
sysctl fs.file-nr
echo To find out what a users file descriptor limit is run the commands:
ulimit -Hn
ulimit -a
echo To find out how many file descriptors are in use by a user run the command:
#lsof -u
lsof -u $USER 2>/dev/null | wc -l
echo So now if you are having a system file descriptor limit issue you will need to edit your /etc/sysctl.conf file and add, or modify it it already exists, a line with fs.file-max and set it to a value large enough to deal with the number of file descriptors you need and reboot.
#sudoedit /etc/sysctl.conf
#fs.file-max = 204708
#sudo sysctl -p 
##sysctl -w fs.file-max=204708

echo Use the following command command to display maximum number of open file descriptors:
cat /proc/sys/fs/file-max
echo To see the hard and soft values, issue the command as follows:
ulimit -Hn
ulimit -Sn
echo "The above procedure sets system-wide file descriptors (FD) limits. However, you can limit httpd (or any other users) user to specific limits by editing /etc/security/limits.conf file, enter:"
export EDITOR=vim;sudoedit  /etc/security/limits.conf
#不理解这东西的含义,所以不知道改到多大比较合适.扩大10倍的话,维持开机一周应该没问题了吧.
#可能的情况是,这个资源的占用平时并不是那么大的,占用过度说明是类似内存泄漏的问题吗?还是只是设计上的不足导致占用过度,但是并不属于泄漏了?
#$USER soft nofile 10096 #原值1000
#$USER hard nofile 40240 #原值4000 ,似乎开机占用1777
#其实最好对比看下ubuntu下的占用量,说不定这是一个systemd的新设计.
#另外,我有点怀疑,这个4000的限量是否起作用,因为似乎任何一个进程都会占据大量的文件,首先是其必要的lib文件,
#firefox自然也占据了大量的缓存,transmission当然也占了不少,然后每个qmlterm都是独立的,占据lib和font文件.
#实际上现在刚开机,已经占据到2966了,然后打开mail和qmlterm,到达3457
#再开一个qmlterm,到3672,再开3个,只接到4320,已经超限了.平时开这么多是很正常的,所以4000这个限额其实有问题的吧?

#测试过后发现,果然4000的限额和这个是无关的.
#所以我们的问题或许根本和这个无关?但是这里的概念也是有问题的,4000限额到底是针对什么设定的,这里给的解释并不对.

#但是也有解释说lsof给的数值不准确,因为重复的文件不算入限额内.
#排除重复后,我们开机包括firefox和transmission之后的数值是746,离4000还差很多.
#我们可以尝试写程序在/dev/shm中打开文件,增大数目到4000触发错误,但这意义不大,因为不清楚这是否真的就是我们触发的那个错误,以及到底是什么程序占掉了最多的存量.
#或许办法只有定时的作下log了,一小时一次,记录下lsof的结果.事后分析下到底哪里占用了资源,什么时候开始占用了资源.

