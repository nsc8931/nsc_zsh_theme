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
sudo snap refresh
```

install anaconda3

```bash
cd /tmp
curl -O #get the link for the lastest version
bash Anaconda3-latest-Linux-x86_64.sh
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
