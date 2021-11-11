dotfiles
========

These home directory dot files for a server context.

## Installation

See https://github.com/andsens/homeshick?source=cc#installation
dotfiles is a repository that works with the homeshick setup. The prompt is based on a couple themes from bash-it.

Quick install:

```
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
homeshick clone https://git.civicactions.net/civicactions/dotfiles.git

```

Bypass most of the homesick stuff.

Create symlinks

```
mv $HOME/.bash_aliases $HOME/.bash_aliases__old
ln -s $HOME/.homesick/repos/dotfiles/home/.bash_aliases $HOME/.bash_aliases

mv $HOME/.bashrc $HOME/.bashrc_old
ln -s $HOME/.homesick/repos/dotfiles/home/.bash_rc $HOME/.bash_rc

```
