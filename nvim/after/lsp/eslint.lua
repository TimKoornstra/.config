vim.schedule(function() vim.notify("Loaded after/lsp/eslint.lua") end)
return {
  settings = {
    format = true,
    workingDirectory = {
      mode = "auto"
    }
  },
}
