dotfiles
========

This is a very simple .dotfiles repo from a [developer]
 
You can use it by itself, but I use it primarly as a submodule of my [MacOS development setup](https://github.com/jurgen-kluft/mac-os-setup).

## Overview

```bash
git init --bare $HOME/.mac-os-dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.mac-os-dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.mac-os-dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

* The first line creates a folder ~/.cfg which is a Git bare repository that will track our files.
* Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
* We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.
* Also you can add the alias definition by hand to your .bashrc or use the the fourth line provided for convenience.

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created config alias, like:

```bashn
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

## Installation

f you already store your configuration/dotfiles in a Git repository, on a new system you can migrate to this setup with the following steps:


* Prior to the installation make sure you have committed the alias to your 
`.bashrc` or `.zsh`:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

* And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:
```bash
echo ".cfg" >> .gitignore
```

* Now clone your dotfiles into a bare repository in a "dot" folder of your `$HOME`:
```bash
git clone --bare <git-repo-url> $HOME/.cfg
```

* Define the alias in the current shell scope:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

* Checkout the actual content from the bare repository to your `$HOME`:
```bash
config checkout
```

* The step above might fail with a message like:
```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because your `$HOME` folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
Re-run the check out if you had problems:
config checkout
```

* Set the flag showUntrackedFiles to no on this specific (local) repository:
```bash
config config --local status.showUntrackedFiles no
```

* You're done, from now on you can now type config commands to add and update your dotfiles:

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

## What you need to know

- the directory `zsh` is not existing in here, but zsh will look there for custom files


## Thanks ...

* https://www.atlassian.com/git/tutorials/dotfiles
