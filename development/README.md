# Setup development environment

### Ubuntu
1. If running virtualbox, make sure virtualbox-guest-additions cd is mounted on /cdrom
2. Run playbook. "for_user" decides which user to install for.
3. Enter root password when prompted

Example: 
```
ansible-playbook development/ubuntu.yml --ask-become-pass --extra-vars "for_user=mats"
```

### RHEL
1. Run playbook. "for_user" decides which user to install for.
2. Enter root password when prompted

Example: 
```
ansible-playbook development/rhel.yml --ask-become-pass --extra-vars "for_user=mats"
```