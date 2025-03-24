return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon").setup({
      global_settings = {
        menu = {
          width = 80, -- Largura do menu
          height = 20, -- Altura do menu
        },
      },
    })
  end,
}
