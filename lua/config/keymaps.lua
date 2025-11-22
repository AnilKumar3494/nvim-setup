-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Uncomment below to changed up and down
-- Normal Mode
-- keymap.set("n", "j", "k", { desc = "Line Up (Custom Swap)" })
-- keymap.set("n", "k", "j", { desc = "Line Down (Custom Swap)" })
--
--
-- -- Visual mode (v)
-- keymap.set("v", "j", "k", { desc = "Line Up (Custom Swap)" })
-- keymap.set("v", "k", "j", { desc = "Line Down (Custom Swap)" })
--
-- -- Since your new 'k' moves down, this should move the window down.
-- keymap.set("n", "sk", "<C-w>j", { desc = "Go to Lower Split" })
--
-- -- SJAPPED: was <C-w>j, now moves to the upper window (k)
-- -- Since your new 'j' moves up, this should move the window up.
-- keymap.set("n", "sj", "<C-w>k", { desc = "Go to Upper Split" })


-- Normal mode keymap
keymap.set("i", "jj", "<Esc>", { desc = 'Exit Insert Mode' })

-- Increment/Increment
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", "vb_d")

-- Select all
-- Map Space + a to Select All
keymap.set("n", "<leader>a", "ggVG", opts)

-- Jumplist
keymap.set("n", "<C-m", "<C-i", opts)

-- new Tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
--Move Window
keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sw", "<C-w>c", { desc = "Close Current Window" })

-- Resize Window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")


--Diagnosics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
