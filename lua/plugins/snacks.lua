return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- components
    bigfile = { enabled = true },
    dashboard = { enable = true },

    indent = {
      enabled = true,
      priority = 1,
      char = "┆",
      only_scope = false,
      only_current = false,
      hl = "SnacksIndent",
    },

    animate = {
      enabled = false,
      style = "out",
      easing = "linear",
      duration = {
        step = 100, -- ms per step
        total = 10, -- maximum duration
      },
    },

    scope = {
      enabled = true,
      priority = 200,
      char = "┆",
      underline = false,
      only_current = false,
      hl = "SnacksIndentScope",
    },

    chunk = {
      enabled = false,
      only_current = false,
      priority = 200,
      hl = "SnacksIndentChunk",
      char = {
        corner_top = "┌",
        corner_bottom = "└",
        horizontal = "─",
        vertical = "┆",
        arrow = ">",
      },
    },

  },
}
