# Step by Step for a nice Fish config and usefull vim interface


# 1 - Install Fish
Fish is a smart and user-friendly command line shell for Linux, macOS, and the rest of the family.

`brew install fish`
More info: https://fishshell.com/docs/current/tutorial.html#tut_path

**Add fish to the know shells**

`sudo sh -c 'echo /usr/local/bin/fish >> /etc/shells'`

-> restart your terminal

**Set fish as the default shell**

`chsh -s /usr/local/bin/fish`

-> restart your terminal, fish should load automatically now instead of bash.

**Add brew binaries in fish path**

`set -U fish_user_paths /usr/local/bin $fish_user_paths`

**Optionnaly configure the shell (launch web interface)**

`fish_config`

### Config.sh

I also edited the ~/.config/fish/config.fish to have my terminal in english and load autojump.
You can install autojump with `brew install autojump`.

```
set -x LANG en_US.UTF-8

[ -f /usr/local/share/autojump/autojump.fish ];
source /usr/local/share/autojump/autojump.fish
```

## 2 - Terminal notifier (For mac users)
terminal-notifier is a command-line tool to send macOS User Notifications, which are available on macOS 10.10 and higher.
 
[Github repo and installation guide](https://github.com/julienXX/terminal-notifier)


## 3 - Nerdfont complete
Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular 'iconic fonts' such as Font Awesome ➶, Devicons ➶, Octicons ➶, and others.

Install on Mac
`brew install --cask font-hack-nerd-font`

[Github repo and installation guide](https://github.com/ryanoasis/nerd-fonts)


## 4 - Tmux
Tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. And do a lot more.

[Github repo and installation guide](https://github.com/tmux/tmux/wiki)

Edit the file /etc/tmux.conf to set the configurations.



 **Edit tmux config file**

Open the file ~/.tmux.conf with your favourite editor and paste the content of my tmux.conf file.
Save the changes and restart the terminal.
To start tmux , just run the command:

$ tumx

After that , you must see the changes on your tmux terminal.



