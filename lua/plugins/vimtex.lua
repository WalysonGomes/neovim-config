return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_quickfix_mode = 0
    -- vim.g.vimtex_compiler_method = "xelatex"
    -- vim.g.vimtex_view_general_viewer = "/mnt/c/Program Files/Mozilla Firefox/firefox.exe"
    -- vim.g.vimtex_view_general_options = "--new-window"
    -- vim.g.vimtex_compiler_latexmk = {
    --   build_dir = "/mnt/c/Users/walys/OneDrive/Documentos/",
    -- }
  end,
}
