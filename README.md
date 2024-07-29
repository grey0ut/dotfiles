# Dotfiles

# Installation
Create a directory named `.dotfiles` in the $HOME directory.
Make sure git and stow are installed.  If leveraging dotfiles for other things (like starship and Powershell) make sure these packages are installed as well.
Initialize git inside `.dotfiles` and pull down the repo.
  
Run `stow` to create the symlinks for your various dot configs:
```
stow bash
stow powershell
stow starship
```
For bash you may need to delete the existing .bashrc or use the parameter to overwrite the existing one with a symlink.
