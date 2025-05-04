# My `.config` Configuration Files

This repository contains configuration files for various tools and applications I use on a daily basis. Here you will find setup instructions and my configurations for `neovim`, the `kitty` terminal, `tmux`, `hyprland`, and `zsh`.

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Setup Instructions](#setup-instructions)
3. [Neovim Configuration](#neovim-configuration)
4. [Kitty Terminal Configuration](#kitty-terminal-configuration)
5. [Tmux Configuration](#tmux-configuration)
6. [Hyprland Configuration](#hyprland-configuration)
7. [Zsh Configuration](#zsh-configuration)
8. [Contributing](#contributing)

---

## System Requirements

Before proceeding with the setup, ensure that you have a Nerd font installed. Nerd fonts are required for specific plugins and icon themes to render correctly.

[Nerd Fonts Website](https://www.nerdfonts.com/)

You also need basic tools:

* `git`
* `curl`
* `zsh` (for shell config)
* `tmux` (for terminal multiplexing)
* `neovim`
* `kitty`
* `hyprland` (Wayland compositor, only on Arch-based distros)

## Setup Instructions

1. **Install dependencies:**

   **Arch Linux:**

   ```bash
   sudo pacman -S git curl zsh tmux neovim kitty hyprland
   ```

   **Ubuntu:**

   ```bash
   sudo apt install git curl zsh tmux neovim kitty
   ```

   *Note: Hyprland is not officially supported on Ubuntu.*

2. **Clone this repo and run the setup script:**

   > 🛑 **Important:** Do not clone directly into `~/.config` if it already exists — it may overwrite your existing configs.

   ```bash
   git clone git@github.com:TimKoornstra/.config.git ~/dotfiles
   cd ~/dotfiles
   chmod +x setup.sh
   ./setup.sh
   ```

This will:

* Move all config folders into `~/.config`
* Move the Git repository into `~/.config` (so you can run `git pull` there)
* Create symlinks for `.zshrc` and `.p10k.zsh` in your home directory

To update configs later:

```bash
cd ~/.config
git pull
```

---

## Neovim Configuration

Neovim is a hyperextensible text editor based on Vim.

### Plugin Installation

1. **Install Packer**:

   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
       ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

2. **Install Plugins using Packer**:
   Launch Neovim and run:

   ```bash
   :PackerSync
   ```

   Restart Neovim and/or run `:PackerCompile` if needed.

3. **Install Treesitter Languages**:

   ```bash
   :TSUpdateSync
   ```

4. **Install LSP Servers**:
   Open the Mason UI:

   ```bash
   :Mason
   ```

   Or run:

   ```bash
   :MasonInstall pylsp tsserver ruff-lsp pylint isort autopep8 ruff
   ```

### Usage

* `nvim` to start Neovim
* `<leader>tf` to find files
* `<leader>tg` for live grep
* `<leader>rn` to rename symbols, `K` to hover docs, etc.

---

## Kitty Terminal Configuration

Kitty is a GPU-based terminal emulator.

### Usage

Launch with:

```bash
kitty
```

---

## Tmux Configuration

Tmux allows you to split and manage terminal sessions.

### Usage

Launch with:

```bash
tmux
```

Prefix is set to `Ctrl + A`.

---

## Hyprland Configuration

Hyprland is a Wayland compositor for tiling and dynamic effects.

> ⚠️ Hyprland is only supported on Arch-based distros.

### Features:

* Blur behind transparent windows
* Kitty opacity rules
* Minimal workspace-only animations

---

## Zsh Configuration

Zsh is configured using Oh My Zsh and Powerlevel10k.

### Setup Steps:

1. Make Zsh the default shell:

   ```bash
   chsh -s $(which zsh)
   ```

2. Install Oh My Zsh:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Run Powerlevel10k wizard:

   ```bash
   p10k configure
   ```

Zsh configuration includes autosuggestions, syntax highlighting, and custom themes.

---

## Contributing

If you find any issues with these configurations or have suggestions for improvements, please open an issue or submit a pull request.

