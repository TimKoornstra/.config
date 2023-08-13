# My `.config` Configuration Files

This repository contains configuration files for various tools and applications I use on a daily basis. Here you will find setup instructions and my configurations for both `neovim` and the `kitty` terminal.

## Table of Contents

1. [Neovim Configuration](#neovim-configuration)
2. [Kitty Terminal Configuration](#kitty-terminal-configuration)

---

### Prerequisites

Before proceeding with the Neovim setup, ensure that you have a Nerd font installed. Nerd fonts are required for specific plugins and icon themes to render correctly.

[Link to Nerd Fonts](https://www.nerdfonts.com/)

## Neovim Configuration

### About

Neovim is a hyperextensible text editor based on Vim. It strives to improve upon Vim by adding new features and making it easier to integrate with other software.

### Installation

1. **Install Neovim**:
    Go to the most recent [Neovim release](https://github.com/neovim/neovim/releases) and follow the instructions for the AppImage.

2. **Install Packer**:
    You can install `packer` on Unix systems by running this command:
    ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
    More installation options are listed in the [original repo](https://github.com/wbthomason/packer.nvim).

3. **Clone Configuration**:
    ```bash
    git clone git@github.com:TimKoornstra/.config.git ~/.config
    ```

4. **Install Plugins using Packer**:
    Launch Neovim and run:
    ```vim
    :PackerSync
    ```
    You might need to restart Neovim and/or run `:PackerCompile` to see the changes.

5. **Install Treesitter Languages**:
    In Neovim, run:
    ```vim
    :TSUpdateSync
    ```

6. **Configure Copilot**:
    In Neovim, run:
    ```vim
    :Copilot setup
    ```
    And follow the on-screen instructions.

### Usage

Open Neovim by typing `nvim` in your terminal.

### Plugins

Here's an overview of the core plugins and categories used in this setup:

- **Themes**:
    - `onedarkpro.nvim`: A dark Neovim theme.
    - `nvim-web-devicons`: Provides icons for various file types.
    - `lualine.nvim`: A lightweight and extensible status line for Neovim.
    - `bufferline.nvim`: A better buffer line with Neovim integration.
    - `alpha-nvim`: A start screen for Neovim.

- **Telescope**:
    - `telescope.nvim`: A highly extendable fuzzy finder.
    - `telescope-project.nvim`: An extension for `telescope.nvim` that allows you to switch between projects.
    - `telescope-media-files.nvim`: Preview images, pdf, epub, video, and fonts from Neovim using Telescope.
    - `telescope-file-browser.nvim`: A file browser extension for telescope.nvim. It supports synchronized creation, deletion, renaming, and moving of files and folders.

- **Treesitter**:
    - `nvim-treesitter`: Treesitter configurations and abstraction layer.
    - `nvim-treesitter-textobjects`: Syntax aware text-objects, select, move, swap, and peek support.

- **LSP (Language Server Protocol)**:
    - `nvim-lspconfig`: Provides configurations for the built-in LSP client.
    - `mason.nvim`: A plugin that allows you to easily manage external editor tooling such as LSP servers, DAP servers, linters, and formatters through a single interface.
    - `mason-lspconfig.nvim`: Closes some gaps that exist between `mason.nvim` and `lspconfig`.
    - `fidget.nvim`: Standalone UI for nvim-lsp progress.
    - `python-type-stubs`: Provides type stubs for Python standard libraries and built-ins, enhancing type checking and autocompletion.
    - `lsp-inlayhints.nvim`: Partial implementation of LSP inlay hint.

- **Git**:
    - `gitsigns.nvim`: Git signs written in pure Lua.
    - `diffview.nvim`: Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

- **Helpers**:
    - `nvim-tree.lua`: A file explorer tree.

- **Auto-complete**:
    - `friendly-snippets`: Add code snippets.
    - `LuaSnip`: Snippet engine.
    - `nvim-cmp`: Autocompletion plugin for Neovim.

- **UI Enhancements**:
    - `dressing.nvim`: Improve the default vim.ui interfaces.
    - `which-key.nvim`: Displays available keybindings in popup.
    - `symbols-outline.nvim`: A tree like view for symbols in Neovim using the Language Server Protocol. 

- **Documentation Helpers**:
    - `neogen`: Generates and maintains doc comments.

- **Commenting**:
    - `nerdcommenter`: Comment functionality for multiple filetypes.

- **Miscellaneous**:
    - `nvim-surround`: Add/change/delete surrounding delimiter pairs with ease.
    - `hop.nvim`: Easymotion-like movement and text object selection.

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

## Contributing

If you find any issues with these configurations or have suggestions for improvements, please open an issue or submit a pull request.

