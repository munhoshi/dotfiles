# lumipixi's dotfiles
These are my dotfiles. They are managed via a bare repo. Thanks to @durdn for the [excellent guide](https://www.atlassian.com/git/tutorials/dotfiles).

## Dependencies
Zsh must be installed and set as the default shell. Oh My Zsh! is HIGHLY recommended.
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Setup scripts
Run the scripts in `dotscripts/`. sync_dotfiles.sh is buggy but should work after a config checkout.
```
sh sync_dotfiles.sh
sh install_packages.sh
```
At this point, it's a good idea to re-login to activate the new dotfiles and aliases. You can change the dotfiles alias to a name like **cfg**, **dot**, etc.
```
echo "alias ALIAS_YOU_WANT='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```
