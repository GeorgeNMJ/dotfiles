" always use tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1

"-----------------------------------------------------------------------------
" ipython-cell configuration
"------------------------------------------------------------------------------
" Keyboard mappings. <Leader> is \ (backslash) by default

" map <Leader>s to start IPython
"nnoremap ,s :SlimeSend1 ipython --matplotlib<CR>
nnoremap ,s :SlimeSend1 ipython<CR>

" map <Leader>r to run script
nnoremap ,r :IPythonCellRun<CR>

" map <Leader>R to run script and time the execution
nnoremap ,R :IPythonCellRunTime<CR>

" map <Leader>c to execute the current cell
nnoremap ,c :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
nnoremap ,C :IPythonCellExecuteCellJump<CR>

" map <Leader>l to clear IPython screen
nnoremap ,l :IPythonCellClear<CR>

" map <Leader>x to close all Matplotlib figure windows
nnoremap ,x :IPythonCellClose<CR>

" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
nmap ,h <Plug>SlimeLineSend
xmap ,h <Plug>SlimeRegionSend

" map <Leader>p to run the previous command
nnoremap ,p :IPythonCellPrevCommand<CR>

" map <Leader>Q to restart ipython
nnoremap ,Q :IPythonCellRestart<CR>

" map <Leader>d to start debug mode
nnoremap ,d :SlimeSend1 %debug<CR>

" map <Leader>q to exit debug mode or IPython
nnoremap ,q :SlimeSend1 exit<CR>

" map <F9> and <F10> to insert a cell header tag above/below and enter insert mode
nmap <F9> :IPythonCellInsertAbove<CR>a
nmap <F10> :IPythonCellInsertBelow<CR>a

" also make <F9> and <F10> work in insert mode
imap <F9> <C-o>:IPythonCellInsertAbove<CR>
imap <F10> <C-o>:IPythonCellInsertBelow<CR>
