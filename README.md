# My `.config` Configuration Files

This repository contains configuration files for various tools and applications I use on a daily basis. Here you will find setup instructions and my configurations for both `neovim` and the `kitty` terminal.

## Table of Contents

1. [Neovim Configuration](#neovim-configuration)
2. [Kitty Terminal Configuration](#kitty-terminal-configuration)
3. [Tmux Configuration](#tmux-configuration)

---

### Prerequisites

Before proceeding with the Neovim setup, ensure that you have a Nerd font installed. Nerd fonts are required for specific plugins and icon themes to render correctly.

[Nerd Fonts Website](https://www.nerdfonts.com/)

## Neovim Configuration

### About

Neovim is a hyperextensible text editor based on Vim. It strives to improve upon Vim by adding new features and making it easier to integrate with other software.

### Installation

1. **Install Neovim**:  
   Go to the most recent [Neovim release](https://github.com/neovim/neovim/releases) and follow the instructions for your operating system.

2. **Install Packer**:  
   You can install `packer` on Unix systems by running this command:
   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
       ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```
   More installation options are listed in the [official repo](https://github.com/wbthomason/packer.nvim).

3. **Clone Configuration**:  
   ```bash
   git clone git@github.com:TimKoornstra/.config.git ~/.config
   ```

4. **Install Plugins using Packer**:  
   Launch Neovim and run:
   ```bash
   :PackerSync
   ```
   Restart Neovim and/or run `:PackerCompile` if needed.

5. **Install Treesitter Languages**:  
   In Neovim, run:
   ```bash
   :TSUpdateSync
   ```

   The config automatically ensures certain Treesitter parsers are installed.

6. **Install LSP Servers**:  
   Use `mason.nvim` to manage and install LSP servers, linters, and formatters. Open the Mason UI:
   ```bash
   :Mason
   ```

   From the UI, you can search and install tools like:

   - **LSP Servers**:
     ```bash
     :MasonInstall pylsp tsserver ruff
     ```
   - **Linters/Formatters**:
     ```bash
     :MasonInstall pylint isort autopep8 ruff
     ```

   You can also install everything in one command:
   ```bash
   :MasonInstall pylsp tsserver ruff-lsp pylint isort autopep8 ruff
   ```

### Usage

Open Neovim by typing `nvim` in your terminal.

### Using Telescope:
- Press `<leader>tf` to find files.
- Press `<leader>tg` for live grep.
- Press `<leader>tb` for buffer list.
- Press `<leader>to` for recently opened files.

### Navigating with LSP:
- `gd` to jump to definition.
- `gr` to list references (Telescope).
- `K` to hover documentation.
- `<leader>rn` to rename symbols.

### Git Integrations:
- `:Gitsigns toggle_current_line_blame` to toggle inline blame.
- `:DiffviewOpen` to open Git diffs in a side-by-side layout.
- `:DiffviewToggle` bound to `<leader>D`.

### Treesitter:
- Enhanced syntax highlighting.
- Incremental selection (use `gnn`, `grn`, `grm`, etc.).


### Plugins

This Neovim configuration includes a robust set of plugins to enhance functionality, productivity, and the user experience. Here's a detailed overview:

| Category                     | Plugins                                                                     |
|-----------------------------|-----------------------------------------------------------------------------|
| **Package Manager**         | [packer.nvim](https://github.com/wbthomason/packer.nvim)                    |
| **Core Dependency**         | [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                    |
| **UI & Themes**             | [onedark.nvim](https://github.com/navarasu/onedark.nvim), [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons), [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim), [alpha-nvim](https://github.com/goolord/alpha-nvim), [which-key.nvim](https://github.com/folke/which-key.nvim), [dressing.nvim](https://github.com/stevearc/dressing.nvim), [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua), [vim-illuminate](https://github.com/RRethy/vim-illuminate) |
| **Fuzzy Finder**            | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim), (https://github.com/nvim-telescope/telescope-media-files.nvim), [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)|
| **Syntax & Parsing**        | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter), [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects), [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) |
| **LSP & Completion**        | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason.nvim](https://github.com/williamboman/mason.nvim), [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim), [blink.cmp](https://github.com/Saghen/blink.cmp), [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) |
| **Git**                     | [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), [diffview.nvim](https://github.com/sindrets/diffview.nvim)                                            |
| **Documentation**           | [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)                                            |
| **Code Manipulation**       | [nerdcommenter](https://github.com/preservim/nerdcommenter), [nvim-surround](https://github.com/kylechui/nvim-surround), [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                          |
| **Navigation**              | [flash.nvim](https://github.com/folke/flash.nvim)                                                                |

---

## Kitty Terminal Configuration

### About

Kitty is a fast, feature-rich, GPU-based terminal emulator. It's designed to be lightweight and easily extensible.

### Installation

1. **Install Kitty**:
   ```bash
   sudo apt install kitty
   ```

2. **Clone Configuration**:
   ```bash
   git clone git@github.com:TimKoornstra/.config.git ~/.config
   ```

### Usage

Open Kitty by typing `kitty` in your terminal.

---

## Tmux Configuration

### About

Tmux is a terminal multiplexer that allows you to run multiple terminal sessions in a single window.

### Installation

1. **Install Tmux**:
   ```bash
   sudo apt install tmux
   ```

2. **Clone Configuration**:
   ```bash
   git clone git@github.com:TimKoornstra/.config.git ~/.config
   ```

3. **Source Configuration**:
   Start a `tmux` session and source the configuration file:
   ```bash
   tmux
   tmux source-file ~/.config/tmux/tmux.conf
   ```

### Usage

Open Tmux by typing `tmux` in your terminal. Use the following keybindings to navigate and manage Tmux sessions:

- **Prefix**: `Ctrl + \`
- The rest of the keybindings remain unchanged from the default Tmux configuration.

---

## Contributing

If you find any issues with these configurations or have suggestions for improvements, please open an issue or submit a pull request.
