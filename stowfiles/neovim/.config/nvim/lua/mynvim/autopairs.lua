require('nvim-autopairs').enable()
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" },
  map_c_h = true,
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]",
  fast_wrap = {}
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))


local npairs = require('nvim-autopairs')
