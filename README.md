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

6. **Install LSP Servers**:  
   Install `pylsp` for Python and `tsserver` for TypeScript/JavaScript:

   - **Python LSP (`pylsp`)**:
     ```bash
     pip install 'python-lsp-server[all]' pylsp-mypy
     pip install pylint isort autopep8
     ```
     Ensure `pylsp` is in your PATH:
     ```bash
     which pylsp
     ```

   - **TypeScript/JavaScript LSP (`tsserver`)**:
     ```bash
     npm install -g typescript typescript-language-server
     ```
     Verify installation:
     ```bash
     which tsserver
     ```

   If any LSP servers are missing, Neovim's `mason.nvim` can manage them. Launch Neovim and run:
   ```bash
   :Mason
   ```
   Then use the UI to install the required servers.

7. **Install Treesitter Contexts**:  
   Treesitter provides advanced syntax highlighting and context awareness. Install it via the plugin configurations included in `packer.nvim`.

8. **Configure GitHub Copilot**:  
   In Neovim, run:
   ```bash
   :Copilot setup
   ```
   Follow the on-screen instructions.

### Usage

Open Neovim by typing `nvim` in your terminal.

### Plugins

This Neovim configuration includes a robust set of plugins to enhance functionality, productivity, and the user experience. Here's a detailed overview:

#### Package Manager

- **[packer.nvim](https://github.com/wbthomason/packer.nvim)**: A fast, modern plugin manager for Neovim.

#### Core Dependency

- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)**: A library of Lua functions required by many plugins.

#### UI and Themes

- **[onedark.nvim](https://github.com/navarasu/onedark.nvim)**: A dark theme with multiple styles.
- **[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)**: Filetype icons.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: A customizable statusline.
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)**: Enhanced buffer/tab line.
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)**: A customizable Neovim start screen.
- **[dressing.nvim](https://github.com/stevearc/dressing.nvim)**: Enhanced UI for input/select prompts.
- **[which-key.nvim](https://github.com/folke/which-key.nvim)**: Displays available keybindings in a popup.
- **[symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)**: A tree-like view for symbols using LSP.
- **[nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)**: Color highlighter.
- **[vim-illuminate](https://github.com/RRethy/vim-illuminate)**: Highlights other uses of the word under the cursor.

#### File Explorer

- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: A file explorer tree.

#### Fuzzy Finder

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: A highly extensible fuzzy finder.
- **[telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim)**: Media preview extension for Telescope.
- **[telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)**: File browser extension for Telescope.

#### Syntax Highlighting and Code Parsing

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting and incremental parsing.
- **[nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)**: Syntax-aware text objects.
- **[nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)**: Displays code context in the editor.

#### LSP and Completion

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Easy configurations for LSP servers.
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: Manage external tools like LSP servers, linters, and formatters.
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: Integrates `mason.nvim` with `nvim-lspconfig`.
- **[fidget.nvim](https://github.com/j-hui/fidget.nvim)**: Displays LSP progress in a compact UI.
- **[nvim-semantic-tokens](https://github.com/theHamsta/nvim-semantic-tokens)**: Adds semantic highlighting for supported languages.

#### Snippets and Completion

- **[friendly-snippets](https://github.com/rafamadriz/friendly-snippets)**: Predefined snippets for various languages.
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: A snippet engine written in Lua.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A powerful completion plugin with extensions for LSP, snippets, and more.

#### Git Integration

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Adds Git-related information to the editor, such as changes and blame.
- **[diffview.nvim](https://github.com/sindrets/diffview.nvim)**: A Git diff tool with a user-friendly interface.

#### AI-Assisted Coding

- **[copilot.vim](https://github.com/github/copilot.vim)**: GitHub Copilot integration for Neovim.

#### Documentation

- **[neogen](https://github.com/danymat/neogen)**: Annotation generator for documenting code.
- **[render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)**: Renders markdown files for preview.

#### Code Manipulation

- **[nerdcommenter](https://github.com/preservim/nerdcommenter)**: Efficient comment management.
- **[nvim-surround](https://github.com/kylechui/nvim-surround)**: Manage surrounding pairs like parentheses or quotes.
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Automatically completes pairs like parentheses and quotes.

#### Navigation

- **[hop.nvim](https://github.com/smoka7/hop.nvim)**: Fast navigation tool similar to Easymotion.

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
