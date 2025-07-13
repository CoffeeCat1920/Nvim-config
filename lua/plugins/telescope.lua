return 
{
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup()
    vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
    vim.keymap.set('n', '<leader>fw', "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
    vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
    vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" })
  end
}

