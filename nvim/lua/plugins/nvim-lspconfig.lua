local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.pylsp.setup{}                                            -- Python
require('lspconfig').clangd.setup{}                                         -- C/C++
require'lspconfig'.gopls.setup{}                                            -- Go
require('lspconfig').html.setup {}                                          -- HTML/CSS/JS
