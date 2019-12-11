~$ sudo docker images
[sudo] password for melnikov: 
REPOSITORY                       TAG                 IMAGE ID            CREATED             SIZE
local/centos-w-sshd-key          latest              130cf62bceab        2 weeks ago         604MB
puppet/puppetserver-standalone   latest              453643f26712        4 weeks ago         535MB
atlassian/bitbucket-server       latest              4655e894c19c        5 weeks ago         595MB
jenkins/jenkins                  lts                 fac78e370c0b        6 weeks ago         568MB
centos                           latest              0f3e07c0138f        2 months ago        220MB
ldapaccountmanager/lam           stable              ea2e1f34792f        2 months ago        473MB
puppet/puppet-agent-centos       latest              b8b0669db558        19 months ago       312MB

~$ sudo docker ps -a
CONTAINER ID        IMAGE                            COMMAND                  CREATED             STATUS                     PORTS                   NAMES
a78c66013208        local/centos-w-sshd-key          "/usr/sbin/sshd -D"      2 weeks ago         Up 30 hours                0.0.0.0:20023->22/tcp   jenkins-ag3
73a200d19f78        local/centos-w-sshd-key          "/usr/sbin/sshd -D"      2 weeks ago         Up 30 hours                0.0.0.0:20022->22/tcp   jenkins-ag2
73c4cc673718        atlassian/bitbucket-server       "/sbin/tini -- /entr…"   3 weeks ago         Exited (143) 13 days ago                           bitbucket
0cb00db4d8b7        jenkins/jenkins:lts              "/sbin/tini -- /usr/…"   3 weeks ago         Exited (143) 13 days ago                           jenkins-srv
bdeb21226ccd        puppet/puppetserver-standalone   "dumb-init /docker-e…"   4 weeks ago         Exited (143) 11 days ago                           puppet
~$ 
