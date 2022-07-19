# dotfiles

This is my personal dotfiles repository. This repo holds the configuration files of my Linux system(s). These dotfiles should work on various operating systems, including most of the Linux distributions and the various BSD systems (this has not been tested). Some of these dotfiles might even work on MacOS (also not tested), such as the Alacritty configuration.

## Directories
- `sys-config/`
    - This directory includes all persistent configuration files that are required to properly use the system.
- Other directories
    - These, such as `arch-v2/` include configuration files for programs like polybar, rofi, alacritty and many others. These only change the looks of the system and should be placed in `$HOME/.config/` (except for .gtkrc-2.0 which should be placed in `$HOME/`).