"
"   Plugins | Table of Contents
"
"     Init
"     Load
"     Utilities


"   __ | Init
"   ~required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim


"   __ | Load
"   ~required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')
  "   ~let dein manage dein
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
  "   ~buffers
  call dein#add('schickling/vim-bufonly')
  "   ~completion
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('mattn/emmet-vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('autozimu/LanguageClient-neovim', { 'build': './install.sh' })
  "   ~comments
  call dein#add('scrooloose/nerdcommenter')
  "   ~editing
  "call dein#add('chrisbra/colorizer')
  call dein#add('ap/vim-css-color')
  call dein#add('godlygeek/tabular')
  call dein#add('junegunn/goyo.vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tommcdo/vim-exchange')
  call dein#add('tpope/vim-surround')
  call dein#add('sickill/vim-pasta')
  call dein#add('arithran/vim-delete-hidden-buffers')
  "   ~files
  call dein#add('euclio/vim-markdown-composer', { 'build': 'cargo build --release' })
  call dein#add('tyru/open-browser.vim')
  "   ~github
  call dein#add('tpope/vim-fugitive')
  "   ~linting
  call dein#add('sbdchd/neoformat')
  call dein#add('w0rp/ale')
  "   ~navigation
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/unite.vim')
  "   ~searching
  call dein#add('brooth/far.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('haya14busa/incsearch-fuzzy.vim')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('junegunn/fzf', { 'build': './install', 'rtp': '' })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('gabesoft/vim-ags')
  "   ~syntax
  call dein#add('sheerun/vim-polyglot')
  "call dein#add('StanAngeloff/php.vim')
  "call dein#add('kh3phr3n/python-syntax')
  "call dein#add('mxw/vim-jsx')
  "call dein#add('othree/html5.vim')
  "call dein#add('pangloss/vim-javascript')
  "call dein#add('plasticboy/vim-markdown')
  "call dein#add('rust-lang/rust.vim')
  "call dein#add('stephpy/vim-yaml')
  "call dein#add('tpope/vim-liquid')
  "   ~theme
  call dein#add('ap/vim-buftabline')
  call dein#add('asilvadesigns/atom-theif')
  call dein#add('joshdick/onedark.vim')
  call dein#add('lifepillar/vim-solarized8')
  call dein#add('mhartington/oceanic-next')
  call dein#add('mhinz/vim-startify')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tyrannicaltoucan/vim-deep-space')
  call dein#add('itchyny/vim-parenmatch')
  "   ~tmux
  call dein#add('christoomey/vim-tmux-navigator')
  "   ~whitespace
  call dein#add('ntpeters/vim-better-whitespace')
  "   ~required
  call dein#end()
  call dein#save_state()
endif


"   __ | Utilities
"   ~if you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"   ~if you update a plugin and need to resource it...
"   ~use this `call dein#recache_runtimepath()`
