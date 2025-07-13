return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "gruvbox",
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          { "mode", 
            icon = " ",
            right_padding = 2 },
        },
        lualine_b = { "branch" },
        lualine_x = {
          { "filename", 
             icon = " ",
             path = 1 },
        },
        lualine_y = { "filetype" },
        lualine_z = { "diagnostics", "location"},
      },
    })
  end,
}

