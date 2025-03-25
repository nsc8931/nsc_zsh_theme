```bash
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

ssh-keygen -t ed25519 -C "your_email@example.com"

Host hostname
    HostName ip
    User username
    IdentityFile /absolute/path/to/home/folder/.ssh/id_ed25519_xxx
    IdentitiesOnly yes
```

In case ubuntu missing the nvidia drive after doing do-release-update, use the command.

```bash
sudo ubuntu-drivers autoinstall
```

modify the snap refresh

```bash
sudo snap set system refresh.timer=00:00~24:00
sudo snap set system refresh.retain=2
sudo snap refresh
```

install anaconda3

```bash
cd /tmp
curl -O #get the link for the lastest version
bash #the name for the lastest Anaconda3-x.x.x-Linux-x86_64.sh
```

For setting different github account, in the homefolder create the file ```.gitconfig```

```bash
[user]
    name = 
    email = 

[includeIf "gitdir/i:/absolute/path/to/folder/"]
    path = /absolute/path/to/home/folder/.gitconfig-nsc8931

[includeIf "gitdir/i:/absolute/path/to/folder/"]
    path = /absolute/path/to/home/folder/.gitconfig-second
```

```bash
git filter-branch --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "wrong@example.com" ]; then
    GIT_COMMITTER_NAME="CorrectUsername"
    GIT_COMMITTER_EMAIL="correct@example.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "wrong@example.com" ]; then
    GIT_AUTHOR_NAME="CorrectUsername"
    GIT_AUTHOR_EMAIL="correct@example.com"
fi
' --tag-name-filter cat -- --branches --tags
```

check the system hardware info

```bash
sudo lshw -short
```

set mount storage

```bash
lsblk -o NAME,MOUNTPOINT,LABEL,FSTYPE
ls -l /dev/disk/by-label/
sudo mkdir -p /mnt/860evo
mkdir -p /home/user/860evo_bind
sudo nano /etc/fstab

/dev/disk/by-label/860evo  /mnt/860evo  ext4  defaults,noatime  0 2
/mnt/860evo /home/user/860evo_bind none bind 0 0

sudo systemctl daemon-reload
sudo mount -a
df -h | grep 860evo
sudo groupadd storage
sudo usermod -aG storage user
newgrp storage
sudo chown root:storage /mnt/860evo
sudo chmod 2775 /mnt/860evo
ls -ld /mnt/860evo

drwxrwsr-x 2 root storage 4096

sudo setfacl -R -m g::rwx /mnt/860evo
getfacl /mnt/860evo

getfacl: Removing leading '/' from absolute path names
# file: mnt/860evo
# owner: root
# group: storage
# flags: -s-
user::rwx
group::rwx
other::r-x
default:user::rwx
default:group::rwx
default:other::r-x

drwxrwsr-x+ 2 root storage 4096
```
