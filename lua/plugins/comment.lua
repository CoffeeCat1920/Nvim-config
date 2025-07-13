return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  config = function()
    local api = require("Comment.api")
    require("Comment").setup()

    -- Toggle current line comment
    vim.keymap.set("n", "<leader>//", api.toggle.linewise.current, { desc = "Toggle comment" })

    -- Toggle selected lines (Visual Mode)
    vim.keymap.set("v", "<leader>//", function()
      -- Get visual range
      local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
      vim.api.nvim_feedkeys(esc, "x", false)
      api.toggle.linewise(vim.fn.visualmode())
    end, { desc = "Toggle comment (visual)" })
  end,
}
