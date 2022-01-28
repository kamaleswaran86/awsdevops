#!/usr/bin/env bash
ansible-playbook getip.yml >> /ansible/awsdevops/logfile.txt
cat logfile.txt  | grep "ok:"| head -1 | awk '{print $2}' | tr -d '[[^:print:]\t]' > logfile1.txt
#cat logfile.txt >> /etc/ansible/hosts
grep -qxF '*us-wes-2.comue.amazoaws.com' /etc/ansible/hosts || cat /ansible/awsdevops/logfile1.txt >> /etc/ansible/hosts
