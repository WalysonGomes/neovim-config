-- install without yarn or npm
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = "cd app && npm install && git restore .",
  --   build = function()
  --   vim.fn["mkdp#util#install"]()
  -- end,

  config = function()
    vim.g.mkdp_browser = "chrome"
    vim.g.mkdp_auto_start = 1
  end,
}
