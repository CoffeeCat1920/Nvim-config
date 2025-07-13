---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    {
      "<leader>-",
      mode = { "n", "v" },
      "<cmd>Yazi toggle<cr>",
      desc = "Open yazi at the current file",
    },
    {
      "<leader>e",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    {
      "<c-up>",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  ---@type YaziConfig | {}
  opts = {
    open_for_directories = true,
  },
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
  config = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        local argv = vim.fn.argv()
        if #argv == 1 and vim.fn.isdirectory(argv[1]) == 1 then
          vim.cmd("Yazi cwd")
        end
      end,
    })
  end,
}
