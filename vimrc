"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/serafim/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('/home/serafim/.vim/bundle'))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

  " Add or remove your Bundles here:
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'mxw/vim-jsx'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'junegunn/fzf.vim'
  NeoBundle 'ajh17/spacegray.vim'
  NeoBundle 'uguu-org/vim-matrix-screensaver'

  NeoBundle 'fatih/vim-go'
  " You can specify revision/branch/tag.
  NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
  NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  " Required:
  call neobundle#end()

  " Required:
  filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
  "End NeoBundle Scripts-------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:javascript_plugin_flow = 1

let g:jsx_ext_required = 0

" matrix screensaver manually installed
set runtimepath+=~/.vim/bundle/vim-matrix-screensaver

" code search
nnoremap ts :tabe<CR>:Ag<CR>

" tab navigation
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tq :tabclose<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabe<Space>
nnoremap to :tabe<CR>:Files<CR>

" tab number mapping
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt

" split tab navigation
nnoremap vs :vsplit<Space>vim<CR>:Files<CR>
nnoremap tm <C-w>w
nnoremap hs :split<Space>vim<CR>:Files<CR>

" split tab resize
nnoremap vr= <C-w>5>
nnoremap vr- <C-w>5<
nnoremap hr= <C-w>5+
nnoremap hr- <C-w>5-

" quick save
inoremap <F6> <Esc>:w<CR>i
inoremap <F5> <Esc>:wq<CR>

inoremap {<cr> {<cr>}<c-o>O<BS>

" colorscheme theme
colorscheme spacegray

" autocomplete
inoremap <C-l> <C-N>

" special highlighting
set number
set tabstop=4
set autoindent
set splitbelow
set splitright
syntax on
