# zsh(oh-my-zsh) + cygwin + ConEmu environment

## Install [Cygwin](https://cygwin.com/install.html)
Install packages **git, lynx, zsh, and wget**

`DON'T` run zsh yet.

To set zsh as your default shell, run

`mkpasswd -l -p "$(cygpath -H)" > /etc/passwd`

then open `/etc/passwd` and find the line that start with your user name (run `whoami` if unsure) and change `/bin/bash` to `/bin/zsh`

You can also set your _HOME_ variable (where zsh will look for config variables) from `/cygdrive/c/Users/user` to `/home/user/` if you prefer to keep all of zsh configs within your CygWin directory. I opt for the latter.

![passwd](https://raw.githubusercontent.com/edqu3/zsh-cygwin-conemu/master/passwd.png)

## Install [apt-cyg](https://github.com/transcode-open/apt-cyg)
apt-cyg works similar to apt-get.

`cd ~`

`lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg`

`install apt-cyg /bin`

## Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
`cd ~`

`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

oh-my-zsh comes bundled with a lot of themes, and they're located at `~/.oh-my-zsh/themes/`
To use any of the default themes, simply set your `ZSH_THEME` variable in `~/.zshrc` to the theme name.
For example, to use `agnoster.zsh-theme` you would set `ZSH_THEME="agnoster"`

You can download more themes from [here](https://github.com/unixorn/awesome-zsh-plugins#themes)

## Install [ConEmu](https://www.fosshub.com/ConEmu.html)

Open ConEmu as an administrator. Open Settings, Navigate to _StartUp > Tasks_

Click + sign to create a new task, check `default shell` box and paste 
`set CHERE_INVOKING=1 & %ConEmuDrive%\cygwin64\bin\zsh.exe --login -i -new_console:C:"%ConEmuDrive%\cygwin64\Cygwin.ico"`
save and exit

## [Install some color schemes for ConEmu](https://github.com/joonro/ConEmu-Color-Themes)

My personal set up:
ConEmu [Spacemacs-dark color scheme](https://github.com/joonro/ConEmu-Color-Themes/blob/master/spacemacs-dark.xml)

[Zeta theme](https://github.com/skylerlee/zeta-zsh-theme) + [Powerline font Ubuntu Mono](https://github.com/powerline/fonts/tree/master/UbuntuMono)

![results](https://raw.githubusercontent.com/edqu3/zsh-cygwin-conemu/master/screenshot.png)
