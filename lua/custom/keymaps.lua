-- Custom keymap
-- See `:help vim.keymap.set()`

-- Cool keymap
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("v", "p", "pgvy", { desc = "Paste without empty paste register" })

-- File operation
vim.keymap.set("n", "<Leader>w", "<cmd>w<cr>", { desc = "Save the file" })
vim.keymap.set("n", "<Leader>q", "<cmd>bdelete<cr>", { desc = "Quit the current buffer" })
vim.keymap.set("n", "<Leader><leader>q", "<cmd>q<cr>", { desc = "Quit the window" })

-- Lsp stuff
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Hover documentation" })

-- Split window
vim.keymap.set("n", "<Leader><leader>=", "<cmd>split<cr>", { desc = "Split the window horizontally" })
vim.keymap.set("n", "<Leader><leader>-", "<cmd>vsplit<cr>", { desc = "Split the window vertically" })

-- Better window operation

vim.keymap.set("n", "<Leader>j", "<C-w>j", { desc = "Focus buffer below" })
vim.keymap.set("n", "<Leader>k", "<C-w>k", { desc = "Focus buffer above" })
vim.keymap.set("n", "<Leader>l", "<C-w>l", { desc = "Focus buffer left" })
vim.keymap.set("n", "<Leader>h", "<C-w>h", { desc = "Focus buffer right" })

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize current view to the top" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize current view to the bottom" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Resize current view to the left" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Resize current view to the right" })

-- Buffer
vim.keymap.set("n", "<Leader><Leader>l", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<Leader><Leader>h", "<cmd>bprev<cr>", { desc = "Previous buffer" })

-- Formatting
-- vim.keymap.set("n", "<C-/>", "gcc", { desc = "Adding comment to the current line" })
-- vim.keymap.set("v", "<C-/>", "gcc", { desc = "Adding comment to the current line" })

vim.keymap.set("v", "<", "<gv", { desc = "Decrease indent" })
vim.keymap.set("v", ">", ">gv", { desc = "Increase indent" })

vim.keymap.set("v", "<Space>j", ":m .+1<CR>==", { desc = "Move line up by 1" } )
vim.keymap.set("v", "<Space>k", ":m .-2<CR>==", { desc = "Move line down by 1" } )

-- Nerdtree
vim.keymap.set('n', '<Leader>n', '<cmd>NERDTreeFocus<cr>', { desc = "Nerd tree focus" })
vim.keymap.set('n', '<C-n>', '<cmd>NERDTree<cr>', { desc = "Nerd tree focus" })
vim.keymap.set('n', '<C-t>', '<cmd>NERDTreeToggle<cr>', { desc = "Nerd tree toggle" })
vim.keymap.set('n', '<C-f>', '<cmd>NERDTreeFind<cr>', { desc = "Nerd tree find" })

-- Term

vim.keymap.set('n', '<Leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { desc = "Toggle Float Terminal" })
vim.keymap.set('t', '<Leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = "Toggle Float Terminal" })
vim.keymap.set('n', '<Leader>g', '<CMD>lua require("FTerm").run("gitui")<CR>', { desc = "Open gitui" })

-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = "Exit terminal mode "} )
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { desc = "Exit terminal mode "} )
vim.keymap.set('t', 'jj', '<C-\\><C-n>', { desc = "Exit terminal mode "} )
vim.keymap.set("t", "<Leader>q", "<cmd>bdelete<cr>", { desc = "Quit the current buffer" })

vim.keymap.set('t', '<A-h>', '<C-\\><C-N><C-w>h', { desc = "" })
vim.keymap.set('t', '<A-j>', '<C-\\><C-N><C-w>j', { desc = "" })
vim.keymap.set('t', '<A-k>', '<C-\\><C-N><C-w>k', { desc = "" })
vim.keymap.set('t', '<A-l>', '<C-\\><C-N><C-w>l', { desc = "" })

vim.keymap.set('i', '<A-h>', '<C-\\><C-N><C-w>h', { desc = "" })
vim.keymap.set('i', '<A-j>', '<C-\\><C-N><C-w>j', { desc = "" })
vim.keymap.set('i', '<A-k>', '<C-\\><C-N><C-w>k', { desc = "" })
vim.keymap.set('i', '<A-l>', '<C-\\><C-N><C-w>l', { desc = "" })

vim.keymap.set('n', '<A-j>', '<C-N><C-w>j', { desc = "" })
vim.keymap.set('n', '<A-k>', '<C-N><C-w>k', { desc = "" })
vim.keymap.set('n', '<A-l>', '<C-N><C-w>l', { desc = "" })

-- Code action
vim.keymap.set('n', '<Leader>,', '<cmd>CodeActionMenu<cr>')

-- Oil
vim.keymap.set('n', '<Leader>-', '<cmd>Oil<cr>', { desc = "Open Oil" })

-- Transparency
vim.keymap.set('n', '<Leader>=', '<cmd>TransparencyToggle<cr>', { desc = "Toggle Transparency" })

-- Trouble
vim.keymap.set('n', '<Leader><leader>t', '<cmd>TroubleToggle workspace_diagnostics<cr>', { desc = "Show workspace diagnostic" } )

-- Symbol Outline
vim.keymap.set('n', '<Leader>so', '<cmd>SymbolsOutline<cr>', { desc = "Show symbol outline" } )
