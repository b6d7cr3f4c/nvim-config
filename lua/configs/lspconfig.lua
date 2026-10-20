require("nvchad.configs.lspconfig").defaults()
require("luau-lsp").setup {
  fflags = {
    enable_new_solver = true
  },
  plugin = {
    enabled = true
  }
}

local servers = {
  ["clangd"] = {
    cmd = {
      "clangd",
      "--background-index",
      "--clang-tidy",
    },
  },

  ["html"] = {},
  ["css"] = {}
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- read :h vim.lsp.config for changing options of lsp server
