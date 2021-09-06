#For VEN version 21.2 and above

#1. ven-control 
Syntax with private key: 
    - # ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem    
Syntax with password: 
    - # ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --ask-become-pass  

Default: Check if workload has VEN and display status
Function:
    - ven_restart
    - ven_stop
    - ven_status
    - ven_suspend
    - ven_unsuspend
    - ven_deactivate
    - ven_unpair

If need to run a specific function, use:
    - # ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem --tags ven_restart 


#2. ven-dependency-install
This will check if any VEN required package dependecies missing and try to install the missing one.
    - # ansible-playbook ven-dependency-install.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem 


#3. ven-pairing
This will install based on the OS version, it will not process if one of the required packaes are missing.
    - # ansible-playbook ven-pairing.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem 

If you see something packages missing, run "ven-dependency-install" for install the missing package.

Also, it keeps the paring.script in templates.