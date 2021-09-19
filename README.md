# arch-linux-dotfile
It's my configurations Linux.
### Modules:
- [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
Any font [Nerd](https://www.nerdfonts.com/)
- [Window System X11](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/X11)
```
pacman -S xorg-server xorg-xinit
```
- [Window Manager i3](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/i3)
```
pacman -S i3-gaps dmeny
```
- [Compositor Picom](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/picom)
```
git clone https://github.com/ibhagwan/picom
cd picom
makepkg -si
```
- [Terminal Emulator Kitty](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/kitty)
```
pacman -S kitty
```
- [Shell Bash](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/bash)
- [Terminal multiplexer tmux](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/tmux)
```
pacman -S tmux
```
- [Shell prompt Starship](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/starship)
```
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```
- [Code Editor Neovim](https://github.com/deadbit-dev/arch-linux-dotfile/tree/main/nvim)
```
pacman -S neovim
```
