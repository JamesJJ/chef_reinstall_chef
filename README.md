chef_reinstall_chef
===================

Why?

I use chef to take a vanilla box to to point it is ready
for service, including using chef to set-up LVM, fstab 
and mount disks. When it comes to mounting /opt the 
existing chef install disappears. At this point you almost
certainly have to end your chef run and begin a new one for
the next set of tasks, but before you can do that, you need
to re-install chef. You could use "knife prepare", or you
use this recipe. i.e.
1) runlist = recipe[mount /opt],recipe[reinstall_chef]
 ... end of that chef run ... then ...
2) runlist = recipe[the next thing you need to do, now /opt is mounted]

* Only tested on el6 and el7 (Centos etc)

"It works for me" - If it doesn't work for you: fork it, change it, test it, submit pull request ;)
