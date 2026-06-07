# ☕ Catppuccin Mocha Sway Dotfiles

![Sway](https://img.shields.io/badge/Window_Manager-Sway-blue?style=for-the-badge&logo=sway)
![Theme](https://img.shields.io/badge/Theme-Catppuccin_Mocha-eba0ac?style=for-the-badge)
![Arch](https://img.shields.io/badge/OS-Arch_Linux-1793d1?style=for-the-badge&logo=arch-linux)

A clean, modular, and distraction-free Wayland configuration centered around **Sway** and unified by the beautiful **Catppuccin Mocha** color palette. Designed specifically for a dual-monitor, 144Hz environment.

*Note: I used some AI to help structure this setup. Would I advise you to do it? Yes, but at least have some prior "ricing" experience so you know what to ask.*
---

## 📸 Screenshots

<img width="2560" height="1440" alt="image" src="https://github.com/user-attachments/assets/899a6a3e-7773-49f6-af78-7be366727aba" />

<img width="2560" height="1440" alt="image" src="https://github.com/user-attachments/assets/94c8b0d6-edd9-4135-bed7-972f9e7a7be9" />


## ✨ Features

*   **Modular Sway Config:** Settings are broken down into `conf.d` files (e.g., outputs, themes, autostart, rules, keybindings) for easier maintenance.
*   **144Hz Optimized:** Displays are configured for 144Hz refresh rates with tearing allowances enabled for supported applications.
*   **Unified Aesthetics:** Everything from the Wofi launcher to the Waybar and wlogout menu shares the Catppuccin Mocha base with Mauve accents and JetBrains Mono fonts.
*   **Dynamic Tiling:** Uses `autotiling` for automatic alternating split directions, similar to bspwm.
*   **Advanced Clipboard:** Integrated `cliphist` with `wl-copy` and `wofi` for a searchable graphical clipboard history manager.
*   **Floating Pop-ups & Rules:** SwayNC provides sleek notification bubbles. Dedicated floating rules are configured for menus, dialogs, calculators, Thunar, and Picture-in-Picture windows.
*   **On-Screen Displays (OSD):** Uses `swayosd` to provide beautiful, Wayland-native volume and brightness indicator overlays.
*   **Custom Themed Exit Menu:** Integrates `wlogout` styled with transparent Catppuccin Mocha overlays and hover animations.

---

## 🧩 Core Components

| Component | Software |
| :--- | :--- |
| **Window Manager** | [Sway](https://swaywm.org/) |
| **Status Bar** | [Waybar](https://github.com/Alexays/Waybar) (Configured with custom weather, MPRIS media controls, and workspace squares |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| **App Launcher** | [Wofi](https://hg.sr.ht/~scoopta/wofi) |
| **Notifications** | [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) |
| **Lock Screen** | [Swaylock](https://github.com/swaywm/swaylock) |
| **Power Menu** | [wlogout](https://github.com/ArtsyMacaw/wlogout) |
| **Editor** | [Neovim](https://neovim.io/) *(lazy.nvim)* |

---

## 🎨 Icon Theming with Papirus Folders

This setup utilizes the popular **Papirus** icon theme (`papirus-icon-theme`), but goes a step further by utilizing `papirus-folders`. 

By default, Papirus uses standard blue folders. The `papirus-folders` script allows you to change the color of the directory icons to perfectly match your system's aesthetic. In this setup, it is used to shift the folder colors to align with the **Catppuccin Mocha** palette (specifically the Mauve accent), ensuring that the file manager (`Thunar`) looks completely integrated with the rest of the desktop environment.

---

## 📦 Installed Packages & Prerequisites

To replicate this exact setup, ensure you have the necessary packages installed. Below is the comprehensive list of Native and AUR packages used in this build:

**AUR Packages (`paru -Qqem`)**
```text
catppuccin-gtk-theme-mocha
paru (and paru-debug)
wlogout
```
Native Arch Packages (paru -Qqen)
``` text
Core System & Drivers: amd-ucode, base, base-devel, linux, linux-firmware, linux-lts, efibootmgr, sudo, zram-generator

Wayland/Sway Ecosystem: sway, swaybg, swayidle, swaylock, swaync, waybar, wofi, xorg-xwayland, xdg-desktop-portal-wlr, wob, wl-clipboard, slurp, grim, autotiling, swayosd

Networking & Bluetooth: networkmanager, network-manager-applet, wpa_supplicant, blueman, bluez, bluez-utils, ufw, proton-vpn-gtk-app

Audio & Media: pipewire, pipewire-alsa, pipewire-jack, pipewire-pulse, wireplumber, pavucontrol, cava, imv, vdpauinfo, libva-utils

Apps & Tools: kitty, neovim, thunar (plus thunar-archive-plugin, thunar-media-tags-plugin, thunar-shares-plugin, thunar-volman), zathura (plus zathura-cb, zathura-djvu, zathura-pdf-mupdf, zathura-ps), libreoffice-fresh, btop, fastfetch, cliphist, timeshift, gnome-disk-utility, file-roller, unzip, zip

Theming & Fonts: ttf-jetbrains-mono-nerd, noto-fonts, noto-fonts-cjk, noto-fonts-emoji, ttf-dejavu, ttf-liberation, woff2-font-awesome, nwg-look, papirus-icon-theme, xsettingsd

Gaming: steam, gamescope, gamemode, mangohud, goverlay

Daemons & Utilities: polkit-gnome, gnome-keyring, seahorse, udiskie, tumbler, gvfs, brightnessctl, flatpak, podman, distrobox, ly
```
(Note: I use Flatpak for Firefox, Discord and Heroic Launcher).

🚀 Installation

⚠️ DISCLAIMER: These configuration files are provided "as is", without warranty of any kind. Please read the code and understand what it does before applying it to your system. Blindly copying dotfiles can overwrite your existing settings.
**I created this setup mostly for the looks and because I find it fun it's not perfect and I will probably move on from it so do not expect it to change much**

# 1. Clone the repository:
```Bash

git clone https://github.com/TheMagicGlobe/Configs.git ~/dotfiles
```
# 2. Backup your existing configurations:
```Bash

cp -r ~/.config/sway ~/.config/sway.backup
cp -r ~/.config/waybar ~/.config/waybar.backup
cp -r ~/.config/wofi ~/.config/wofi.backup
```
# 3. Installation

You can install these dotfiles by manually copying them, or by using GNU Stow (recommended for easy updates).

### Option A: Manual Copy (Cherry-picking)
Copy the desired directories into your config folder:
```bash
cp -r ~/dotfiles/sway ~/.config/
cp -r ~/dotfiles/waybar ~/.config/
cp -r ~/dotfiles/wofi ~/.config/
cp -r ~/dotfiles/swaync ~/.config/
cp -r ~/dotfiles/wlogout ~/.config/
cp -r ~/dotfiles/nvim ~/.config/
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/.swaylock ~/
```
Option B: GNU Stow (Recommended)

If you want to keep your dotfiles linked to this repo so you can easily pull updates, use stow:

```bash
cd ~/dotfiles
for dir in sway waybar wofi swaync wlogout nvim kitty; do
    rm -rf ~/.config/$dir
    ln -s "$PWD/$dir" ~/.config/$dir
done
# Symlink .swaylock directly to the home directory
rm -rf ~/.swaylock
ln -s "$PWD/.swaylock" ~/.swaylock
```

# 4. Reload Sway:
Press Mod + Shift + C to reload your window manager and apply the changes.
⌨️ Keybindings
```text 
The primary modifier (Mod) is set to the Super/Windows key.
System & Launchers,
Keybinding	Action
Mod + Enter	Open Kitty Terminal
Mod + D	Open Wofi App Launcher
Mod + C	Open Clipboard History (Wofi Menu)
Mod + Shift + C	Reload Sway Configuration
Mod + Shift + E	Open wlogout (Power Menu)
Mod + Ctrl + L	Lock Screen (swaylock)
Mod + Shift + Q	Close Focused Window
Window Management & Focus
Keybinding	Action
Mod + h/j/k/l	Focus Left/Down/Up/Right
Mod + Shift + h/j/k/l	Move Window Left/Down/Up/Right
Mod + Space	Toggle Focus Between Tiling/Floating
Mod + Shift + Space	Toggle Window Floating Status
Mod + F	Toggle Fullscreen
Mod + B	Split Horizontal
Mod + V	Split Vertical
Mod + S / W / E	Layout Stacking / Tabbed / Toggle Split
Workspaces
Keybinding	Action
Mod + 1-0	Switch to Workspace 1-10
Mod + Shift + 1-0	Move Container to Workspace 1-10
Media & Hardware (Special Keys)
Keybinding	Action
Print Screen	Screenshot Full Display to Clipboard
Mod + Shift + S	Screenshot Selected Region to Clipboard
Audio Volume Up/Down	Raise/Lower Volume via OSD
Audio Mute	Toggle Audio Mute via OSD
Brightness Up/Down	Raise/Lower Screen Brightness via OSD
```
---

# Theme colors provided by [Catppuccin](https://github.com/catppuccin).

# Neovim setup inspired from [Folke](github.com/folke/do).

# Thanks to [r/unixporn](https://www.reddit.com/r/unixporn/) for the endless amount of inspiration.
