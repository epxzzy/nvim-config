return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "js-debug-adapter",
        "lua_ls",
        "gopls",
        "rust_analyzer",
        "clangd",
        "jdtls",
        "jsonls",
        --"java_language_server",
      },
    },
    priority = 18,
    config = function()
      require("mason").setup({
        PATH = "prepend",
        ensure_installed = {
          "tsserver",
          "js-debug-adapter",
          "lua_ls",
          "gopls",
          "rust_analyzer",
          "clangd",
          "jdtls",
          "jsonls",
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 19,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tsserver",
          "lua_ls",
          "gopls",
          "rust_analyzer",
          "clangd",
          "jdtls",
          "jsonls",
          --	"java_language_server",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    priority = 20,
    config = function()
      require("mason")
      require("mason-lspconfig")
      local capabilites = require("cmp_nvim_lsp").default_capabilities()
      local lspconf = require("lspconfig")
      lspconf.tsserver.setup({
        capabilities = capabilites,
      })
      lspconf.lua_ls.setup({
        capabilities = capabilites,
      })
      lspconf.gopls.setup({
        capabilities = capabilites,
      })
      lspconf.rust_analyzer.setup({
        capabilities = capabilites,
      })
      lspconf.clangd.setup({
        capabilities = capabilites,
      })
      lspconf.jsonls.setup({
        capabilities = capabilites,
      })
      lspconf.jdtls.setup({

        capabilities = capabilites,
      })
      lspconf.java_language_server.setup({
        capabilities = capabilites,
      })

      vim.keymap.set({ "n", "v" }, "<leader>ski", ":LspStart<CR>", {})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      --vim.keymap.set('n', 'gt', vim.lsp.buf.type_definitions, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gF", vim.lsp.buf, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})

      vim.keymap.set("n", "zf", vim.lsp.buf.format({}),{})
    end,
  },
}
