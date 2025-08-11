# Dotfiles

Personal configuration files for my development environment.

## Contents

### Shell Configuration
- **bash/** - Bash shell configuration
  - `.bashrc` - Main bash configuration with aliases and environment setup
  - `.bash_profile` - Bash profile settings
  - `.profile` - General shell profile

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
```

## Theme

Primary theme: **Tokyo Night Storm** with Catppuccin accents

## System

- **OS:** Nobara Linux (Fedora-based)
- **Shell:** Bash with Starship prompt
- **Terminal:** Ghostty
- **Editor:** VS Code

## License

MIT