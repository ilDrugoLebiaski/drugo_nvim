# Drugo neovim

Neovim custom configuration optimized for development in C, Python, Java, JavaScript, PHP, HTML, Markdown and Bash.

## Plugin manager

- [`lazy.nvim`](https://github.com/folke/lazy.nvim)

## Plugin and Features:

- ['Autopairs'](https://github.com/windwp/nvim-autopairs)
- ['Catppuccin'](https://github.com/catppuccin/nvim)
- ['Comment'](https://github.com/numToStr/Comment.nvim)
- ['Completions'](https://github.com/hrsh7th/cmp-nvim-lsp)
- ['Dashbord'](https://github.com/nvimdev/dashboard-nvim)
- ['Git Signs'](https://github.com/lewis6991/gitsigns.nvim)
- ['Harpoon'](https://github.com/ThePrimeagen/harpoon)
- ['Indent Blankline'](https://github.com/lukas-reineke/indent-blankline.nvim)
- ['Mason'](https://github.com/williamboman/mason.nvim)
- ['Lsp Config'](https://github.com/neovim/nvim-lspconfig)
- ['Mason Lsp'](williamboman/mason-lspconfig.nvim)
- ['Markdown Preview'](https://github.com/iamcco/markdown-preview.nvim)
- ['Mini'](https://github.com/nvim-mini/mini.icons)
- ['None-ls'](https://github.com/nvimtools/none-ls.nvim)
- ['Noice'](https://github.com/folke/noice.nvim)
- ['Neo-Tree'](https://github.com/nvim-neo-tree/neo-tree.nvim)
- ['Nvim Dap'](https://github.com/mfussenegger/nvim-dap)
- ['NvimLine'](https://github.com/nvim-lualine/lualine.nvim)
- ['Project'](https://github.com/ahmedkhalf/project.nvim)
- ['Telescope'](https://github.com/nvim-telescope/telescope.nvim)
- ['ToDo Comments'](https://github.com/folke/todo-comments.nvim)
- ['Toggle Term'](https://github.com/akinsho/toggleterm.nvim)
- ['Treesitter'](https://github.com/nvim-treesitter/nvim-treesitter)
- ['UFO'](https://github.com/kevinhwang91/nvim-ufo)
- ['Vim Surround'](https://github.com/tpope/vim-surround")
- ['Which Key'](https://github.com/folke/which-key.nvim)

Each plugin has its own configuration file to make maintenance easy.
The configuration files are organized in `lua/plugins/`.

## Why these plugins?

- **Catppuccin + Lualine**
  Provide a clean, readable and pleasant UI;

- **Treesitter**
  Modern syntax parsing. Better highlighting, better indentation, better understanding of code structure.

- **LSP (nvim-lspconfig + Mason + Mason-lspconfig)**
  Language intelligence: completion, diagnostics, refactoring, ecc. Mason handles installation, LSP does the real work;

- **Completions (nvim-cmp)**
  Context-aware autocompletion powered by LSP;

- **None-ls**
  Formatting and diagnostics via external tools (prettier, black, flake8, shellcheck. ecc.);

- **Telescope**
  Fuzzy finder for files, buffers, symbols, LSP actions;

- **Harpoon**
  Fast file switcher, complements Telescope;

- **Neo-tree**
  File explorer for a global view of the project;

- **Nvim-dap (+ UI)**
  Real debugging inside Neovim. Breakpoints, stepping, variables;

- **ToggleTerm**
  Integrated terminal for builds, REPLs, git, scripts;

- **Autopairs + Surround + Comment**
  Small plugins that remove friction while writing code;

- **Indent Blankline + UFO**
  Visual structure and code folding;

- **Dashboard**
  Entry point with shortcuts and recent files;

- **Which-key**
  Discoverability of keybindings without memorizing everything;

- **Todo-comments**
  Makes TODO, FIXME, NOTE visible and searchable across the project;

## Installation:

        # Backup of previousconfiguration:
        mv ~/.config/nvim ~/.config/nvim.backup

        # Clone this repo:
        git clone https://github.com/TUO_USERNAME/nvim-config.git ~/.config/nvim

        # Launch Neovim (plugins will install automatically)
        nvim
