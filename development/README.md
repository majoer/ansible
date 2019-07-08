# Setup development environment

1. If running virtualbox, make sure virtualbox-guest-additions cd is mounted on /cdrom
2. Run playbook. "for_user" decides which user to install for.
3. Enter root password when prompted

Example: 
```
ansible-playbook development/development-environment.yml --ask-become-pass --extra-vars "for_user=mats"
```