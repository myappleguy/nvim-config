"
" Key Mappings
"

" Backspace in Visual mode deletes selection.
"
vnoremap <BS> d

"
" Todds additions
"
tnoremap <Esc><leader> <C-\><C-n>
nnoremap ; :
nnoremap <space> i<space><Esc>
inoremap ii <Esc>
set autochdir
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" F2 inserts the date and time at the cursor.
"
inoremap <F2>   <C-R>=strftime("%c")<CR>
nmap     <F2>   a<F2><Esc>

" > / <  indent/unindent the highlighted block (and maintain the
" highlight after changing the indentation). Works for both Visual and Select
" modes.
"
vmap >    >gv
vmap <  <gv

" Draw lines of dashes or equal signs below us based on the length of the current line
"
"   yy      Yank whole line
"   p       Put line below current line
"   ^       Move to beginning of line
"   v$      Visually highlight to end of line
"   r-      Replace highlighted portion with dashes / equal signs
"   j       Move down one line
"   a       Return to Insert mode
"
" XXX: Convert this to a function and make the symbol a parameter.
" XXX: Consider making abbreviations/mappings for ---<CR> and ===<CR>
"
inoremap <C-U>- <Esc>yyp^v$r-ja
inoremap <C-U>= <Esc>yyp^v$r=ja

" Control+Hyphen (yes, I know it says underscore) repeats the character above
" the cursor.
"
inoremap <C-_>  <C-Y>

" Center the display line after searches. (This makes it *much* easier to see
" the matched line.)
"
" More info: http://www.vim.org/tips/tip.php?tip_id=528
"
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#zz

" Make page-forward and page-backward work in insert mode.
"
imap <C-F>  <C-O><C-F>
imap <C-B>  <C-O><C-B>


" Turn On/Off NERDTree
map <leader>n :NERDTreeToggle<CR>

" open zshell in neovim
map <leader>zs :terminal /bin/zsh<CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-k> [e==
nmap <C-j> ]e==
" Bubble multiple lines
vmap <C-k> [egv==
vmap <C-j> ]egv==

" Movement up and down when lines are wrapped
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Gundo configuration
nmap <F5> :GundoToggle<CR>
imap <F5> <ESC>:GundoToggle<CR>

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

inoremap <C-j>       <Down>

let g:ragtag_global_maps = 1
let g:SuperTabDefaultCompletionType = "context"
let g:user_zen_expandabbr_key = '<c-z>'

" Mapping for toggling between block wrappers
let g:blockle_mapping = '<Leader>bl'

" Toggle open the tags list window
nnoremap <silent> <F8> :TlistToggle<CR>

" Ctrl-Shift-F for Ack
  map <C-F> :Ack<space>

" Ctrl-Option-ArrowKey to switch viewports
  map <C-S-Up> <C-w>k
  imap <C-S-Up> <Esc> <C-w>k
  map <C-S-Down> <C-w>j
  imap <C-S-Down> <Esc> <C-w>j
  map <C-S-Right> <C-w>l
  imap <C-S-Right> <Esc> <C-w>l
  map <C-S-Left> <C-w>h
  imap <C-S-Left> <C-w>h

" Git Gutter Commands
let g:gitgutter_highlight_lines = 1
let g:gitgutter_enabled = 0
nmap <leader>gg :GitGutterToggle<CR>

" Fugitive
nmap <leader>gs :Gstatus<CR>
nmap <leader>gr :Gread<CR>:w<CR>
nmap <leader>gp :Git push origin HEAD<CR>

" Ruby helpers
nmap <leader>rs :w<CR>:! rspec %<CR>
nmap <leader>r :w<CR>:! ruby %<CR>
nmap <leader><leader>r :w<CR>:! ruby -Itest %<CR>

" spell check
nmap <leader>sc :setlocal spell! spelllang=en_us<CR>

" edit vim configs
nmap <leader>vm :vsp<CR>:e ~/code/dotfiles/vim.symlink/vimrc.symlink<CR>
nmap <leader>ab :vsp<CR>:e ~/code/dotfiles/vim.symlink/abbreviations.vim<CR>
nmap <leader>km :vsp<CR>:e ~/code/dotfiles/vim.symlink/keymaps.vim<CR>
nmap <leader>plg :vsp<CR>:e ~/code/dotfiles/vim.symlink/plug.vim<CR>
