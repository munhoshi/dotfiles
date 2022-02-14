# songpixi's dotfiles
These are my dotfiles. They are managed via a bare repo.

**Note:** management is accomplished with a bare repository. Thanks to @durdn for the [excellent guide](https://www.atlassian.com/git/tutorials/dotfiles).

## Dependencies
Zsh must be installed and set as the default shell. Oh My Zsh! is HIGHLY recommended.
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Dotfiles
Run the scripts in `dotscripts/`. sync_dotfiles.sh is buggy but should work after a config checkout.
```
sh sync_dotfiles.sh
sh installers.sh
```
At this point, it's a good idea to re-login to activate the new dotfiles and aliases. You can change the dotfiles alias to a name like **cfg**, **dot**, etc.
```
echo "alias ALIAS_YOU_WANT='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Application specific settings
### Konsole and Yakuake
You can find custom profiles and color schemes in `.local/share/konsole/`.

* **Desktop.profile** - Terminus font, scrollback size: 1000 lines.
* **Laptop.profile** - DejaVu Sans Mono font, scrollback size: 500 lines due to limited memory.

To use them, quit any open Konsole or Yakuake instances, then:
1. Open Konsole or Yakuake and go to **Settings > Manage Profiles**. Yakuake has hamburger menu Settings.
2. Highlight the desired profile and click **Set as Default**, then **OK** to exit the dialog.
3. Activate Konsole: **Settings > Switch Profile > desired profile**.
4. Activate Yakuake: **Settings > Quit**, then reopen.
