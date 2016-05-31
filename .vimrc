"""""""""""""""""""
" => General
"""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=700

" Sets how many undo levels to remember
set undolevels=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


""""""""""""""""""""""
" => User interface
""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
	set wildignore+=.git\*,.hg\*,.svn\*
endif

" Always show current position
set ruler

" Shows line numbers
set number

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap=<,>,h,l

" In many terminals the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif

" Highlight search results
set hlsearch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""
" Enable syntax highlightning
syntax enable

try
	colorscheme desert
catch
endtry

color desert

set background=dark

set cursorline
hi clear CursorLine

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard filetype
set ffs=unix,mac,dos


""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""
" Use tabs
set noexpandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set autoindent

" Smart indent
set smartindent

" Wrap lines
set wrap


""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Fix syntax for files
au BufNewFile,BufRead .bash_aliases call SetFileTypeSH("bash")
au BufNewFile,BufRead *.hbs set filetype=html
