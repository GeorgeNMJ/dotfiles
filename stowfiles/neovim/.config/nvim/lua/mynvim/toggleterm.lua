require('toggleterm').setup{
    size = 10,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = '10',
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    -- persist_size = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
}

-- allow keybindings in Terminal mode
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-- lazy git
-- local Terminal  = require('toggleterm.terminal').Terminal
-- local lazygit = Terminal:new({
--   cmd = "lazygit",
--   hidden = true,
--   dir = "git_dir",
--   direction = "float",
--   float_opts = {
--     border = "double",
--   },
--   -- function to run on opening the terminal
--   on_open = function(term)
--     vim.cmd("startinsert!")
--     vim.api.nvim_buf_set_keymap(
--         term.bufnr, "n", "q", "<cmd>close<CR>", 
--         {noremap = true, silent = true}
--         )
--   end,
--   -- function to run on closing the terminal
--   on_close = function(term)
--     vim.cmd("Closing terminal")
--   end,
-- })
--
-- function _lazygit_toggle()
--   lazygit:toggle()
-- end
--
-- vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
