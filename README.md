## Installation
### Dependencies

```bash
paru -Sy picom-git fish alacritty rofi acpi acpid acpi_call upower lxappearance-gtk3 jq inotify-tools polkit-gnome xdotool xclip gpick ffmpeg blueman redshift pipewire pipewire-alsa pipewire-pulse alsa-utils brightnessctl feh maim mpv mpd mpc mpdris2 python-mutagen ncmpcpp playerctl 7zip atuin awesome-git bat cava dysk firefox micro neofetch networkmanager network-manager-applet zathura --needed
```

### Fonts

```bash
cp -r misc/fonts/* ~/.fonts/
# or to ~/.local/share/fonts
cp -r misc/fonts/* ~/.local/share/fonts/
```

```bash
fc-cache -fv
```
