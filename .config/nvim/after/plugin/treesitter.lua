-- only for windows
--require'nvim-treesitter.install'.compilers = {'zig'}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "cpp" ,"c", "python", "lua", "vim", "vimdoc", "query",
                        "java", "javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = {
    -- 'false' will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
    },
}
