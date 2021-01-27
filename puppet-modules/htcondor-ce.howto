# fermicloud-helpers

To create an OSG htcondor CE on fermicloud:

Prerequisites:
* account on fermicloud, ability to create vms
* ability to run puppet build command locally


mac-128665:fermicloud-helpers dbox$ cd puppet-modules
mac-128665:puppet-modules dbox$ ./create_fermicloud_vm.sh
Waiting for fermicloud132.fnal.gov to boot up
....VM Information
-------------------
vm_name     : dbox-SLF7V_DynIP_Home
vm_template : SLF7V_DynIP_Home
vmid   : 45941
fqdn   : fermicloud132.fnal.gov
dn     :
status      : up
mac-128665:puppet-modules dbox$ ./install_module.sh fermicloud132.fnal.gov osg_client 'osg_version => "3.5"'
[ ..stuff omitted ..]
Connection to fermicloud132.fnal.gov closed.
mac-128665:puppet-modules dbox$ ./install_module.sh fermicloud132.fnal.gov osg_htcondor_ce 
[..more stuff..]

#at this point you have a CE on fermicloud132.  In order for SCITOKENS to authenticate on this CE
# I have had to  add lines to /etc/condor-ce/condor_mapfile and then run osg-configure -c

#here is an entry that maps any token issued by wlcg.cloud.cnaf.infn.it to unix account 'osg'
#SCITOKENS https://wlcg.cloud.cnaf.infn.it osg


