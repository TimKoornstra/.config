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

- **Package Manager**:
    - `packer.nvim`: A use-package inspired plugin manager for Neovim.

- **Core Dependency**:
    - `plenary.nvim`: All the lua functions you don't want to write twice.

- **Themes and UI**:
    - `onedark.nvim`: A dark Neovim theme.
    - `nvim-web-devicons`: Provides icons for various file types.
    - `lualine.nvim`: A lightweight and extensible status line for Neovim.
    - `bufferline.nvim`: A better buffer line with Neovim integration.
    - `alpha-nvim`: A start screen for Neovim.
    - `dressing.nvim`: Improve the default vim.ui interfaces.
    - `which-key.nvim`: Displays available keybindings in popup.
    - `symbols-outline.nvim`: A tree like view for symbols in Neovim using the Language Server Protocol.
    - `nvim-colorizer.lua`: A high-performance color highlighter for Neovim.
    - `vim-illuminate`: Automatically highlighting other uses of the word under the cursor.

- **File Explorer**:
    - `nvim-tree.lua`: A file explorer tree for Neovim.

- **Fuzzy Finder**:
    - `telescope.nvim`: A highly extendable fuzzy finder.
    - `telescope-media-files.nvim`: Preview images, pdf, epub, video, and fonts from Neovim using Telescope.
    - `telescope-file-browser.nvim`: A file browser extension for telescope.nvim.

- **Syntax and Code Parsing**:
    - `nvim-treesitter`: Treesitter configurations and abstraction layer.
    - `nvim-treesitter-textobjects`: Syntax aware text-objects, select, move, swap, and peek support.
    - `nvim-treesitter-context`: Shows code context.

- **LSP and Completion**:
    - `nvim-lspconfig`: Provides configurations for the built-in LSP client.
    - `mason.nvim`: Portable package manager for Neovim that runs everywhere Neovim runs.
    - `mason-lspconfig.nvim`: Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.
    - `fidget.nvim`: Standalone UI for nvim-lsp progress.
    - `python-type-stubs`: Provides type stubs for Python standard libraries and built-ins.
    - `nvim-semantic-tokens`: Semantic token highlighting for Neovim.

- **Snippets and Completion**:
    - `friendly-snippets`: Preconfigured snippets for different languages.
    - `LuaSnip`: Snippet engine for Neovim written in Lua.
    - `nvim-cmp`: A completion plugin for neovim coded in Lua.

- **Git Integration**:
    - `gitsigns.nvim`: Git integration for buffers.
    - `diffview.nvim`: Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

- **AI-Assisted Coding**:
    - `avante.nvim`: AI-assisted coding plugin.
    - `copilot.lua`: Neovim plugin for GitHub Copilot.
    - `img-clip.nvim`: Plugin for pasting images from clipboard.
    - `render-markdown.nvim`: Plugin for rendering markdown.

- **Documentation**:
    - `neogen`: Annotation generator.

- **Code Manipulation**:
    - `nerdcommenter`: Comment functions.
    - `nvim-surround`: Add/change/delete surrounding delimiter pairs.
    - `nvim-autopairs`: Autopairs for Neovim written in Lua.

- **Navigation**:
    - `hop.nvim`: Easymotion-like plugin allowing you to jump anywhere in a document.

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

