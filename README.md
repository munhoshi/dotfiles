# songpixi's dotfiles
These are my dotfiles. They are managed via a bare repo.

**Note:** management is accomplished with a bare repository. Thanks to @durdn for the [excellent guide](https://www.atlassian.com/git/tutorials/dotfiles).

## Dependencies
Zsh must be installed and set as the default shell.
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Dotfiles
Run the scripts. sync_dotfiles.sh is buggy but should work after a config checkout.
```
sh sync_dotfiles.sh
sudo sh installers.sh
```
At this point, it's a good idea to `omz reload` to activate the new aliases.


## Application specific settings
### Konsole and Yakuake
Location: `.local/share/konsole/`

**Desktop.profile** - Terminus font, scrollback size: 1000 lines.

**Laptop.profile** - DejaVu Sans Mono font, scrollback size: 500 lines due to limited memory.

0. Close any open instances of Konsole, Yakuake
1. Open Settings > Manage Profiles. Yakuake has a hamburger menu instead of a Settings button.
2. Highlight the desired profile and click Set as Default, then OK to exit the dialog.
3. Activate: Konsole: Settings > Switch Profile > desired profile. - Yakuake: Settings > Quit, then reopen.
