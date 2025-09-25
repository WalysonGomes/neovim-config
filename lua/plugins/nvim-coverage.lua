return {
  "andythigpen/nvim-coverage",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("coverage").setup({
      commands = true,
      highlights = {
        covered = { fg = "#2BAD38" },
        uncovered = { fg = "#C64550" },
      },
      signs = {
        covered = { text = "▎" },
        uncovered = { text = "▎" },
      },
      lang = {
        java = {
          coverage_file = "target/site/jacoco/jacoco.xml",
        },
      },
    })
  end,
}
