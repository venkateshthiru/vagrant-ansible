Write appropriate documentation in the repository to explain how someone cloning it should provision the Vagrant VM and access the web URL serving out the “Hello World”

Prerequisites

You need to have following tools installed before executing the commands,

Ansible
Vagrant
Virtualbox or and other providers specified in https://www.vagrantup.com/docs/providers/
serverpec and rake (gem install serverspec rake)


Clone th repo and inside main root folder execute,

```
vagrant up
```

This will downlaod centos/7 vagrant box and configure the system using ansible playbook (playbook.yml)

If you need to change vagrantbox ip or port forwarding you need to edit the Vagrantfile before executing this command,

```
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.10"
  ```
  
If you use the existing configs after provisoning completed you can access nginx using,

localhost/hostip:8080 or
192.168.33.10:80

To run the tests in root folder execute below given command,

```
rake
```

This will execute the tests and verfiy your configurations


