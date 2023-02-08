local prettier = require('prettier')

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    'css',
    'graphql',
    'html',
    'javascript',
    'javascriptreact',
    'json',
    'markdown',
    'tailwindcss',
    'typescript',
    'typescriptreact',
  },
})
