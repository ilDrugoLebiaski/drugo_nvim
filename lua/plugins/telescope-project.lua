return {
  {
    "ahmedkhalf/project.nvim",
    -- Carica il plugin all'avvio di Neovim, così è pronto per il dashboard
    event = "VimEnter",

    config = function()
      require("project_nvim").setup({
        -- 1. METODI DI RILEVAMENTO:
        --   'lsp' usa gli LSP attivi per trovare la root.
        --   'pattern' usa i file che definiamo qui sotto.
        detection_methods = { "lsp", "pattern" },

        -- 2. PATTERN PER IL RILEVAMENTO:
        -- I file che project.nvim cercherà per definire la radice del progetto
        patterns = {
          ".git", -- Universale per tutti i repository (git)
          "pom.xml", -- Java (Maven)
          "build.gradle", -- Java (Gradle)
          "CMakeLists.txt", -- C/C++ (CMake)
          "compile_commands.json", -- C/C++ (Clang)
          "package.json", -- JavaScript/TypeScript (Node/NPM)
          "composer.json", -- PHP
          "pyproject.toml", -- Python (Moderno)
          "requirements.txt", -- Python (Tradizionale)
          "Cargo.toml", -- Rust
        },

        -- 3. ALTRE OPZIONI
        -- directory_name: opzionale, usa il nome della cartella del progetto come nome
        datadir = vim.fn.stdpath("data") .. "/project",
        -- Usa la funzione Telescoper projects per aprire la cartella
        manual_mode = false,
      })

      -- Carichiamo anche l'estensione di Telescope per poterla chiamare
      -- con l'azione del tuo dashboard: Telescope projects
      require("telescope").load_extension("projects")
    end,

    -- Devi assicurarti che Telescope sia una dipendenza di questo plugin se usi lazy.nvim
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
