" No compatible with the original VI(venerable old)
set nocompatible

"VIM-PLUG
call plug#begin('~/.config/nvim/plugged')

"Plugin list ------------------------------------------------------------------

"NOTE: Check plugins' performance before add
"http://stackoverflow.com/a/12216578

"-----------------------------------------------------------------------------
"Theme
"-----------------------------------------------------------------------------
Plug 'itchyny/lightline.vim'
Plug 'Mofiqul/dracula.nvim'
" "-----------------------------------------------------------------------------
" "Edit
" "-----------------------------------------------------------------------------
Plug 'jiangmiao/auto-pairs'
Plug 'yegappan/mru'
" "-----------------------------------------------------------------------------
" "Languages
" "-----------------------------------------------------------------------------
"
" "-----------------------------------------------------------------------------
" "Finders
" "-----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" "-----------------------------------------------------------------------------
" "Misc
" "-----------------------------------------------------------------------------
"
" End plugin list --------------------------------------------------------------

call plug#end()

" "Plugin configuration ---------------------------------------------------------
"Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }

"MRU
let MRU_Max_Entries = 30
let MRU_Window_Height = 5
let MRU_Auto_Close = 1

"NerdTree
let NERDTreeMapActivateNode = '<tab>'
let NERDTreeMouseMode = 2

" "End Plugin configuration -----------------------------------------------------
"
" "View & Highlighters-----------------------------------------------------------
"
" set background=dark
"
" " color monokai
" colorscheme monokai
"
" " colorscheme solarized
" " Set term color palette to 256, and auto
" " let g:solarized_termcolors = 256
" " Set the default color with the best option for ITERM2 expliciltly.
" " let g:solarized_termtrans = 1
"
" "End View & Highlighters  -----------------------------------------------------
"
"VIM configuration ------------------------------------------------------------

"Must be set first before configurations
filetype plugin indent on
syntax enable

"Enable line numbers
set number
"Softtab -- use spaces instead tabs.
set expandtab
set tabstop=2 shiftwidth=2 sts=2

"locate the new pane at the right when split
set splitright

"I dislike CRLF.
if !exists("vimpager")
  set fileformat=unix
endif

set backspace=2

"Case insensitve in cmdline
"NOTE: Must be set for other insensitve configurations
set ignorecase
"Case sensitive when search & replace
set smartcase
"Case insensitive when cmdline tab autocompletion
set infercase

"Prefer UTF-8.
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

"Some additional syntax highlighters.
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.sass setfiletype sass
au! BufRead,BufNewFile *.scss setfiletype scss
au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.less setfiletype less

"These languages have their own tab/indent settings.
augroup IndentLanguages
  au!
  au FileType py    setl ts=4 sw=4 sts=4
  au FileType cpp    setl ts=4 sw=4 sts=4
  au FileType ruby   setl ts=2 sw=2 sts=2
  au FileType yaml   setl ts=2 sw=2 sts=2
  au FileType html   setl ts=2 sw=2 sts=2
  au FileType jinja  setl ts=2 sw=2 sts=2
  au FileType lua    setl ts=2 sw=2 sts=2
  au FileType haml   setl ts=2 sw=2 sts=2
  au FileType sass   setl ts=2 sw=2 sts=2
  au FileType scss   setl ts=2 sw=2 sts=2
  au FileType make   setl ts=4 sw=4 sts=4 noet
  au FileType markdown   setl ts=2 sw=2 sts=2
  au FileType gitcommit setl spell
  au FileType tf setl ts=2 sw=2 sts=2
  au FileType tfstate setl ts=2 sw=2 sts=2
augroup END

"English spelling checker.
setlocal spelllang=en_us

set novisualbell

"mouse mode enabled automatically (somewhere), but I set it expliciltly.
set mouse+=a

"Using the clipboard as the default register
"http://vim.wikia.com/wiki/Accessing_the_system_clipboard
"Commented. See 'doc/utility.txt'
"set clipboard=unnamedplus

"To show space(trail) as ~
set listchars=trail:~,tab:↹\
set list

"Folding
set foldmethod=indent
set foldlevel=99

"Just search word, not jump.
"http://stackoverflow.com/questions/4256697/vim-search-and-highlight-but-do-not-jump
nnoremap * :keepjumps normal! mi*`i<CR>

"Allows hiding buffers even though they contain modifications
"Issue with neovim & vim-airline : https://github.com/neovim/neovim/issues/4524
"http://www.guckes.net/vim/setup.html
set hid

"Speed up Syntax Highlighting
set nocursorcolumn
set nocursorline
"set lazyredraw "It makes no effect(or more slow?!) from personal experience
set ttyfast
set norelativenumber
set synmaxcol=400 "set enough(but not too long) column length.
syn sync minlines=50 maxlines=50

"End VIM configuration --------------------------------------------------------
"
"Key bindings -----------------------------------------------------------------

"Terminal in Vim
":help terminal-emulator-input
"Exit terminal mode
:tnoremap <Esc> <C-\><C-n>

"Indent key for easy to press
nmap < <<
nmap > >>

"Nerdtree
let NERDTreeMapOpenVSplit="<C-v>"
let NERDTreeMapOpenSplit="<C-s>"

"FZF
"nmap fz :FZF <cr>" Just type fz
""fzf key map to be equal with NerdTree
"let g:fzf_action = {
"  \ 'ctrl-s': 'split',
"  \ 'ctrl-v': 'vsplit'
"  \ }

"Folding
"fold (ex: level=<input><CR>)
nmap fd :setlocal foldlevel=
"Toggle
nmap <Tab> zO
nmap <s-Tab> zc

" "New terminal in the top of the active pane
" nmap <leader>t :new<CR>:resize 5<CR>:terminal<CR>
"
" "New vertical pane at the side of the window (Condition: "splitright" is set.)
" nmap side :vnew<CR>:vertical resize 40<CR>:wincmd h<CR>
"
"Initialize window with NERDTree, right side pane
nmap <leader>i :NERDTree<CR>:wincmd l<CR>:vnew<CR>:vertical resize 40<CR>:wincmd h<CR>

"Page up & down as Up & Down
"End Key bindings -------------------------------------------------------------

"Buf configurations ----------------------------------------------------------

augroup RemoveTrailingSpace
  autocmd!
  "Automatically removing all trailing whitespace
  autocmd BufWritePre * %s/\s\+$//e
augroup END

"END Buf configuration -------------------------------------------------------

"CursorLine configurations ----------------------------------------------------------

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"END cursorLine configuration -------------------------------------------------------

"VimEnter configurations ------------------------------------------------------
"NOTE: Order is important in this block.

augroup MRUOpen
  autocmd!
  autocmd VimEnter * MRU
  autocmd VimEnter * :wincmd k
augroup END

 augroup NERDTreeOpen
   autocmd!
   "NERDTree
   autocmd VimEnter * NERDTree
   "To focus edit pane after NERDTree open
   autocmd VimEnter * wincmd l
 augroup END

"Make a new 'Vertical New Pane Side' & back to the main pane
  " augroup SideRightOpen
  "   au!
  "   autocmd VimEnter * :vsp
  "   autocmd VimEnter * wincmd h
  " augroup END

"END VimEnter configuration ---------------------------------------------------
" "
" "-----------------------------------------------------------------------------
" "Last configuration(including Plugins)
" " - to solve the order dependency
" "-----------------------------------------------------------------------------
"
" "-----------------------------------------------------------------------------
