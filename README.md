# Dotfiles
This is mostly for my own reference so if you're here, use at your own risk.  
# Installation
Create a directory named `.dotfiles` in the $HOME directory.
Make sure git and stow are installed.  If leveraging dotfiles for other things (like starship and Powershell) make sure these packages are installed as well.
Initialize git inside `.dotfiles` and pull down the repo.
  
Run `stow` to create the symlinks for your various dot configs:
```
stow nvim
stow bash
stow powershell
stow starship
```
For bash you may need to delete the existing .bashrc or use the parameter to overwrite the existing one with a symlink.

need to have neovim installed, with a version above v8.0 and then the Lazy-vim config will take care of downloading all of the plugins, and the configuration will be handled by the .lua files

# hyprland  
Examples from my desktop setup.  
Monitor1
![hyprlandMon1](./images/hyprland_monitor01.jpg)
Even though Hyprland is a tiling window manager I still use tmux quite a bit for terminal work.  Here you can see my use of nord theme in kitty, starship, neovim and waybar.  
![hyprlandMon1_2](./images/hyprland_monitor02.jpg)
I keep 4 static workspaces on my left, primary monitor, and 2 on the right.  
Monitor2  
![hyprlandMon2](./images/hyprland_monitor03.jpg)
Workspace 5 is often where I will put a browser window if I'm referencing stuff while working on monitor 1.  
Workspace 6 is set up to treat all windows as floating and I often put chat windows here, music, cava, etc.  
![hyprlandMon2_2](./images/hyprland_monitor04.jpg)

## Notes to self  
For hyprland make sure to have the following packages installed:  
pacman  
  hyprland, swaync, hyprlock, waybar, hyprpaper, hypridle, xdg-desktop-portal-hyprland, ttf-font-awesome

aur  
  hyprshot, pwvucontrol, ulauncher
everything is Nord themed where possible.  The reason for the separate hyprconf directories as an attempt to maintain one git repo for hyprland config but utilize it on a desktop and a laptop.  This seems to work well for me, your mileage may vary.  
