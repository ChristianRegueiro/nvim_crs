vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    for _, client in pairs(clients) do
      if client.supports_method("textDocument/formatting") then
        vim.lsp.buf.format({ async = false })
        return
      end
    end
  end,
})

