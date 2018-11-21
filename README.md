dotfiles
========

This is a very simple .dotfiles repo from a [developer]
 
You can use it by itself, but I use it primarly as a submodule of my [MacOS development setup](https://github.com/jurgen-kluft/mac-os-setup).

## Installation

Attention: This will overwrite already existing 'mac-os-setup' in your home directory:

```bash
git clone https://github.com/jurgen-kluft/mac-os-dotfiles.git ~/mac-os-dotfiles
cp ~/mac-os-dotfiles/* ~/ 
source ~/mac-os-dotfiles/.bash_profile
```

To update, change into your local `mac-os-dotfiles` repository and then:

```bash
cd ~/mac-os-dotfiles/
git pull
cp ~/mac-os-dotfiles/* ~/ 
```

## What you need to know

- the directory `zsh` is not existing in here, but zsh will look there for custom files


## Thanks ...

* [Ingo Walz](https://github.com/iwalz/) for the idea to read more about public dotfiles
* [Dotfiles](http://dotfiles.github.io/) the unofficial guide to dotfiles on GitHub
* [Kevin Elliott](https://github.com/kevinelliott/.dotfiles) for his repo
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his repo
* [tutsplus](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/)


