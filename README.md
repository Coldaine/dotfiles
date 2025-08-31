# Dotfiles

Personal configuration files for my development environment.

## Contents

### Shell Configuration
- **bash/** - Bash shell configuration
  - `.bashrc` - Main bash configuration with aliases and environment setup
  - `.bash_profile` - Bash profile settings
  - `.profile` - General shell profile
- **fish/** - Fish shell configuration
  - `config.fish` - Fish shell configuration with custom functions
  - `fish_variables` - Fish shell variables and settings

### Terminal Emulator
- **terminal/ghostty/** - Ghostty terminal configuration
  - `config` - Main configuration with Tokyo Night Storm theme
  - `keybinds` - Custom keybindings for productivity
  - `shaders/` - Custom visual effects shaders

### Prompt
- **shell/starship.toml** - Starship prompt with Catppuccin theme

### Version Control
- **git/.gitconfig** - Git configuration and aliases

### Development Tools
- **rust/env** - Rust/Cargo environment setup
- **vscode/** - VS Code editor settings and keybindings

### Editors
- **kate/** - Kate text editor configuration
  - `katerc` - Main Kate settings and preferences
  - `katevirc` - Vim mode configuration
  - `kate-externaltoolspluginrc` - External tools plugin settings
  - `config/` - Kate application configuration directory

### Desktop Environment (KDE Plasma)
- **kde/** - KDE Plasma desktop configurations
  - `kwinrc` - KWin window manager settings
  - `kwinrc.polonium` - Polonium tiling extension configuration
  - `kwinoutputconfig.json` - Multi-monitor display configuration
  - `dolphinrc` - Dolphin file manager preferences

### Services
- **systemd/user/** - User systemd service configurations
  - `sunshine.service` - Sunshine game streaming server service

### System Configuration  
- **system/99-inotify.conf** - inotify limits for development and KDE

## Installation

Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
```

### Manual Installation

Create symbolic links for the configurations you want to use:

```bash
# Bash
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/bash/.profile ~/.profile

# Git
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

# Fish Shell
ln -sf ~/dotfiles/fish ~/.config/fish

# Ghostty Terminal
mkdir -p ~/.config/ghostty
ln -sf ~/dotfiles/terminal/ghostty/config ~/.config/ghostty/config
ln -sf ~/dotfiles/terminal/ghostty/keybinds ~/.config/ghostty/keybinds
ln -sf ~/dotfiles/terminal/ghostty/shaders ~/.config/ghostty/shaders

# Starship Prompt
ln -sf ~/dotfiles/shell/starship.toml ~/.config/starship.toml

# Rust
ln -sf ~/dotfiles/rust/env ~/.cargo/env

# VS Code
mkdir -p ~/.config/Code/User
ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

# Kate Editor
mkdir -p ~/.config
ln -sf ~/dotfiles/kate/katerc ~/.config/katerc
ln -sf ~/dotfiles/kate/katevirc ~/.config/katevirc
ln -sf ~/dotfiles/kate/kate-externaltoolspluginrc ~/.config/kate-externaltoolspluginrc
ln -sf ~/dotfiles/kate/katemetainfos ~/.config/katemetainfos
ln -sf ~/dotfiles/kate/config ~/.config/kate

# KDE Plasma Desktop
ln -sf ~/dotfiles/kde/kwinrc ~/.config/kwinrc
ln -sf ~/dotfiles/kde/kwinrc.polonium ~/.config/kwinrc.polonium
ln -sf ~/dotfiles/kde/kwinoutputconfig.json ~/.config/kwinoutputconfig.json
ln -sf ~/dotfiles/kde/dolphinrc ~/.config/dolphinrc

# Systemd User Services
mkdir -p ~/.config/systemd/user
ln -sf ~/dotfiles/systemd/user/sunshine.service ~/.config/systemd/user/sunshine.service
systemctl --user enable sunshine.service

# System Configuration (requires sudo)
sudo ln -sf ~/dotfiles/system/99-inotify.conf /etc/sysctl.d/99-inotify.conf
sudo sysctl -p /etc/sysctl.d/99-inotify.conf
```

## Theme

Primary theme: **Tokyo Night Storm** with Catppuccin accents

## System

- **OS:** Nobara Linux (Fedora-based)
- **Shell:** Bash/Fish with Starship prompt
- **Terminal:** Ghostty
- **Editor:** VS Code, Kate
- **Desktop:** KDE Plasma with Polonium tiling
- **Hardware:** Intel i9-14900KF, 64GB RAM, RTX 3090

## License

MIT