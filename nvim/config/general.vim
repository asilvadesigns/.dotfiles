"
"   General | Table of Contents
"
"     Buffers
"     Build
"     Editing
"     Files
"     Folding
"     Help
"     Intro
"     Invisible Chars
"     MatchParen
"     Menu
"     Modes
"     Mouse
"     Omnifunc
"     Rendering
"     Search
"     Sign Column
"     Tabs & Indents
"     Terminal
"     Text


"   __ | Buffers
"   ~allow switching through modified buffers
set hidden


"   __ | Build
"   ~build
let g:python3_host_prog = '/usr/local/bin/python3'


"   __ | Editing
"   ~don't show last command
set noshowcmd
"   ~load plugins for file types
filetype plugin on
"   ~if file changes: reload
set autoread
"   ~set file encoding to UTF8
set encoding=utf8
"   ~moving as expected through whitespace
set virtualedit=all
"   ~move through whitespace as expected
nnoremap j gj
nnoremap k gk
"   ~show relative line numbers
set nu rnu
"   ~no end of line on new files
set noeol


"   __ | Files
"   ~don't use swapfile
set noswapfile


"   __ | Folding
"   ~show folds
set foldcolumn=0

"   __ | Help
"   ~always open help docs to the right with numbers : )
augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif | setlocal rnu
augroup END


"   __ | Intro
"   ~don't show intro message
set shortmess=atI


"   __ | Invisible Chars
"   ~set defaults for invisible chars
set nolist
set listchars=tab:‣\ ,space:·,trail:·,eol:¬


"   __ | MatchParen
"   ~don't use built in matchparen.. it's slow
let loaded_matchparen = 0


"   __ | Menu
"   ~set menu height and options
set pumheight=10
set completeopt=longest,menuone


"   __ | Modes
"   ~get out of insert mode
inoremap jk <esc>
inoremap kj <esc>
"   ~jump to the end of the line
imap <C-l> <C-o>A
"   ~quickly access command line
nnoremap ; :


"   __ | Mouse
"   ~use the mouse
"set mouse=a


""   __ | Omnifunc
""   ~set omnifunc defaults | NOTE: ternjs overrides js later
"augroup omnifuncs
"  autocmd!
"  autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
"  "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  "autocmd FileType javascript setlocal omnifunc=tern#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end

"set omnifunc=LanguageClient#complete
"set completefunc=LanguageClient#complete


"   __ | Rendering
"   ~don't redraw unless you have to
set nolazyredraw


"   __ | Search
"   ~case intelligent search
set ignorecase
set smartcase
"   ~no highlight search result
set hlsearch
"   ~show preview window when substituting string
"set inccommand=split


"   __ | Sign Column
"   ~always show sign column
set signcolumn=yes


"   __ | Tabs & Indents
"   ~reference #2 in options.txt under 'tabstop'
set tabstop=2
set shiftwidth=2
set expandtab
"   ~indent as expected
set autoindent
set copyindent
set smartindent


"   __ | Terminal
"   ~set default shell
set shell=/bin/zsh
"   ~quickly get out of terminal mode
tnoremap kj <C-\><C-n>
"   ~hide numberlines
au TermOpen * setlocal nu norelativenumber
"   ~auto enter insert mode with terminal selected
"au BufWinEnter,WinEnter term://* startinsert


"   __ | Text
"   ~no text wrapping
set nowrap
