dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

ssh-keygen -t ed25519 -C "your_email@example.com"

Host hostname
    HostName ip
    User username
    IdentityFile ~/.ssh/id_ed25519_xxx
    IdentitiesOnly yes