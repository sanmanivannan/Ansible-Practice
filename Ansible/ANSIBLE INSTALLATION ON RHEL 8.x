ANSIBLE INSTALLATION ON RHEL 8.x

Ansible-Control-System:
Installing Python as root id on the controller machine

	1  yum update -y
    2  yum upgrade -y
    3  yum install python3 -y
    8  alternatives --set python /usr/bin/python3
    9  python --version
   10  yum install python3-pip -y
   11  adduser ansadmin
   12  passwd ansadmin
   13  visudo
   14  vi /etc/ssh/sshd_config
   15  service sshd restart

Installing Ansible as user(here its ansadmin user) in the controller machine

	1	pip3 install ansible --user
    2 	ansible --version
	3	ssh-keygen
	4	ssh-copy-id ansadmin@<ipaddress>
    5  sudo mkdir /etc/ansible
    6  cd /etc/ansible
    7  sudo vi hosts ----->>add the node(s) ip address/hostname
   
   Testing the connectivity between Ansible Control System and Node(s)
   
   1	ssh ansadmin@<IP>  (once the connection is established, come back to the control system)
   2	exit
   
   Test the Ansible Ping test
   
   1	ansible all -m ping
   

 
   
   
   

Ansible Node Config:
	1  yum update -y
    2  yum upgrade -y
    3  adduser ansadmin
    4  passwd ansadmin
    5  visudo
    6  cd /etc/ssh
    9  vi sshd_config
   10  service sshd restart
Note: All Ansible Nodes should have the similar UserName and Password set, irrespective of the platform it is.

