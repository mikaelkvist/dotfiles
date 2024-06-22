# Dotfiles

## Debian

### User permissions
Ensure your user is in the sudoers list. E.g. try `sudo apt update`.

If not; execute
```
su root
sudo visudo
```

and add this line:
```
<username>  ALL=(ALL:ALL) ALL
```

### Ansible dependencies
Install Ansible by executing:
```
sudo apt update
sudo apt install -y pipx
pipx install ansible-core
pipx ensurepath
source ~/.bashrc
```

## Setup the environment
Run the ansible playbook:
```
ansible-playbook --ask-become-pass ansible/main.yml
```


## Final
You may need to log out and in, since the user shell was changed.
