-- Basic settings
vim.opt.number = true          -- show absolute line number on the current line
vim.opt.relativenumber = true  -- show relative line numbers on other lines
vim.opt.tabstop = 2        -- number of visual spaces per TAB
vim.opt.cursorline = true  -- Highlight current line
vim.opt.scrolloff = 10


-- Tabs
vim.opt.shiftwidth = 2     -- number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set({ "n", "v" }, "y", '"+y')
vim.keymap.set("n", "Y", '"+Y')
vim.keymap.set("n", "p", '"+p')
vim.keymap.set("n", "P", '"+P')

-- Title bar
vim.opt.title = true
vim.opt.titlestring = "%f"

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options 
vim.opt.pumheight = 10                             -- Popup menu height 
vim.opt.conceallevel = 0                           -- Don't hide markup 
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup 
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit 
