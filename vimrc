call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" set our tabs to four spaces
set smartindent
set sw=4
set ts=4

" turn syntax highlighting on by default
syntax on

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
set nocompatible

" Make mouse middle click paste without formatting it.
map <MouseMiddle> <Esc>"*p

" Better modes.  Remeber where we are, support yankring
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

" Move Backup Files to ~/.vim/sessions
set backupdir=~/.vim/sessions
set dir=~/.vim/sessions

" Turn off annoying swapfiles
set noswapfile

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set nohlsearch

" highlight search terms incrementally
set incsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" turn-off toolbar
set guioptions-=T

" turn-off scrollbar
set guioptions-=L
set guioptions-=r

" add line numbers
set nu

" don't wrap lines
set nowrap

" login to shell
set shell=bash\ --login

" allow tab completion of buffers
set wildchar=<Tab> wildmenu wildmode=full

" map [jj] to Esc and Write in insert mode
inoremap jj <Esc>:w<CR>
inoremap ;; <End>;<Esc>:w<CR>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Show the full path of the current file
noremap ff :echo expand('%:p')<CR>

" Show the full path of the current file and add it to a yank register
noremap cp :let @" = expand("%:p")<CR>

" Make window movement easier
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

colorscheme slate

" set line number color
highlight LineNr guifg=#666666
highlight ColorColumn ctermbg=darkgrey guibg=#2f2f2f
set colorcolumn=86
set ruler

" highlight things that we find with the search
set hlsearch

"{{{Taglist configuration
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Highlight_Tag_On_BufEnter = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Show_One_File = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Ctags_Cmd = "vimctags"
"}}}

"map <F8> :!vimctags -f ./tags -h ".php.tao" -R --exclude="\.svn" --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP="/abstract class ([^ ]*)/\1/c/" --regex-PHP="/interface ([^ ]*)/\1/c/" --regex-PHP="/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/"

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1

autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" abbreviations
ab dcm /**<CR> * @param <CR>* @return void<CR>*/<Esc><Up><Up>$i
ab pubm /**<CR> * @param <CR>* @return void<CR>*/<CR><Backspace>public function()<CR>{<CR><CR>}<Esc>kkk%hi
ab privar /**<CR> * @var <CR>*/<CR>private $
ab provar /**<CR> * @var <CR>*/<CR>protected $
ab pubvar /**<CR> * @var <CR>*/<CR>public $

" expand tabs to spaces
set expandtab