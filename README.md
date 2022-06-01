# For VEN version 21.2 and above (For Linux Only)

* First generate a pairing script for PCE, and paste in the ven-pairing/templates/pairing_script.sh                     

# 1. ven-control 
Syntax with private key: 
```
ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem 
```

Syntax with password: 
```
# ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --ask-become-pass
```

Default: Check if workload has VEN and display status
Function:
```
    - ven_restart
    - ven_stop
    - ven_status
    - ven_suspend
    - ven_unsuspend
    - ven_deactivate
    - ven_unpair
```

If need to run a specific function, use:
```
ansible-playbook ven-control.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem --tags ven_restart 
```

# 2. ven-dependency-install
This checks if any VEN required package dependecies missing and try to install the missing one.
```
ansible-playbook ven-dependency-install.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem 
```

# 3. ven-pairing
This installs based on the OS version, it will not process if one of the required packages are missing.
```
ansible-playbook ven-pairing.yml -i inventory.txt -u ec2-user --private-key apaclabkey.pem 
```

If there is a package missing, run "ven-dependency-install" for installing the missing one.
