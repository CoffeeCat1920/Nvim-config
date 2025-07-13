return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- Setup Harpoon
    harpoon:setup()

    -- Keymap: Add current file to Harpoon list
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Harpoon: Add File" })

    -- Keymaps: Jump to specific files with Alt+Shift+[HJKL]
    vim.keymap.set("n", "<C-h>", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: Go to File 1" })

    vim.keymap.set("n", "<C-j>", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: Go to File 2" })

    vim.keymap.set("n", "<C-k>", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: Go to File 3" })

    vim.keymap.set("n", "<C-l>", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: Go to File 4" })
  end,
}
