# Setup development environment

1. Run playbook. "for_user" decides which user to install for.
2. Enter root password when prompted

Example: 
```
ansible-playbook development/development-environment.yml --ask-become-pass --extra-vars "for_user=mats"
```