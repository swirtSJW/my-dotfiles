dotfiles
========

These home directory dot files for a server context.

## Installation

See https://github.com/andsens/homeshick?source=cc#installation
dotfiles is a repository that works with the homeshick setup. The prompt is based on a couple themes from bash-it.

Quick install:

```
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
homeshick clone https://github.com/swirtSJW/my-dotfiles 
## move my-dotfiles to dotfiles

```

Bypass most of the homesick stuff.

Create symlinks

```
mv $HOME/.bash_aliases $HOME/.bash_aliases__old
ln -s $HOME/.homesick/repos/dotfiles/home/.bash_aliases $HOME/.bash_aliases

mv $HOME/.bashrc $HOME/.bashrc_old
ln -s $HOME/.homesick/repos/dotfiles/home/.bashrc $HOME/.bashrc

mv $HOME/.git-completion.bash $HOME/.git-completion.bash__old
ln -s $HOME/.homesick/repos/dotfiles/home/.git-completion.bash $HOME/.git-completion.bash




```
