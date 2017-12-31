"
"   Hotkeys | Table of Contents
"
"     Ale
"     Buftabline
"     Colorizer
"     Comfortable Motion
"     Deoplete
"     DeleteHiddenBuffers
"     Easy Motion
"     FZF
"     Goyo
"     Incsearch
"     Language Server
"     Markdown
"     Multiple Cursors
"     NERDTree
"     Neoformat
"     Nvim Completion Manager
"     OpenBrowser
"     Pulse
"     Python Syntax
"     Startify
"     Tern
"     VimFiler
"     vim-jsx
"     vim-markdown
"     vim-parenmatch


"   __ | Ale
"   ~enable by default
let g:ale_enabled = 1
"   ~lint on modifying a buffer
let g:ale_lint_on_text_changed = 1
"   ~lint on enter
let g:ale_lint_on_enter = 0
"   ~lint on save
let g:ale_lint_on_save = 0
"   ~always show column
let g:ale_sign_column_always = 1
"   ~change default symbols
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
"   ~custom error message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"   ~define lineters
let g:ale_linters = {
      \ 'html': ['htmlhint'],
      \ 'liquid': ['htmlhint'],
      \ 'javascript': ['eslint'],
      \ 'javascript.jsx': ['eslint'],
      \ 'jsx': ['eslint'],
      \ 'json': ['jsonlint'],
      \ 'css': ['stylelint'],
      \ 'scss': ['stylelint'],
      \ 'typescript': ['eslint'],
      \ }
"   ~don't underline errors/warning
let g:ale_set_highlights = 0


"   __ | Buftabline
"   ~enable modified flag
let g:buftabline_indicators = 1
"   ~show ordinal numbers (left to right)
let g:buftabline_numbers = 2
"   ~use hotkeys to jump to buffers
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)


"   __ | Colorizer
"   ~enable show colors
map <leader>ct :ColorToggle<cr>


"    __ | Deoplete
"   ~enable at startup
let g:deoplete#enable_at_startup = 1
"   ~disable auto completions
let g:deoplete#disable_auto_complete = 1
"   ~enable manual completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space()
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"   ~use tab and shift tab to cycle through completion menu
"inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<c-p>" : "\<S-TAB>"
"
""   ~custom markers, aka 'icons'
call deoplete#custom#set('LanguageClient', 'rank', 9999)
call deoplete#custom#set('omni', 'rank', 9000)

call deoplete#custom#set('LanguageClient', 'mark', '')
"call deoplete#custom#set('ternjs',        'mark', '')
"call deoplete#custom#set('jedi',          'mark', '')
"call deoplete#custom#set('vim',           'mark', '⌁')
"call deoplete#custom#set('neosnippet',    'mark', '⌘')
"call deoplete#custom#set('tag',           'mark', '⌦')
"call deoplete#custom#set('around',        'mark', '↻')
"call deoplete#custom#set('buffer',        'mark', 'ℬ')
"call deoplete#custom#set('tmux-complete', 'mark', '⊶')
"call deoplete#custom#set('syntax',        'mark', '♯')
"   ~whether to include the types of the completions in the result data. Default: 0
"let g:deoplete#sources#ternjs#types = 1
"   ~ternjs filetypes
"let g:deoplete#sources#ternjs#filetypes = [
"                \ 'jsx',
"                \ 'javascript.jsx',
"                \ 'vue'
"                \ ]


"   __ | DeleteHiddenBuffers
"   ~map command to relevant key
nnoremap <C-W>d :DeleteHiddenBuffers<cr>


"   __ | Easy Motion
"   ~easy motion fuzzy finder
function! s:config_easyfuzzymotion(...)
  return extend(copy({
        \   'converters': [incsearch#config#fuzzyword#converter()],
        \   'modules': [incsearch#config#easymotion#module()],
        \   'keymap': {"\<CR>": '<Over>(easymotion)'},
        \   'is_expr': 0,
        \   'is_stay': 1
        \ }), get(a:, 1, {}))
endfunction
"   ~sexy search with space
nnoremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())


"   __ | FZF
"   ~set runtime path
set rtp+=~/.fzf
"   ~set options
let $FZF_DEFAULT_OPTS .= ' --no-height'
"   ~NOTE: use <ctrl-c> to exit the below
"   ~smart - uses GFiles if we're in git repo
"nnoremap <C-p> :ProjectFiles<cr>
"   ~set default usage.
nnoremap <C-p> :Files<cr>
"   ~look in project files not node modules etc.
nnoremap <C-g> :GFiles<cr>
"   ~search for [query] within buffers
nnoremap <C-b> :Buffers<cr>
"   ~search for [query] within current buffer lines
nnoremap <C-f> :BLines<cr>
"   ~mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
"   ~insert mode completion
imap <c-f><c-k> <plug>(fzf-complete-word)
imap <c-f><c-f> <plug>(fzf-complete-path)
imap <c-f><c-j> <plug>(fzf-complete-file-ag)
imap <c-f><c-l> <plug>(fzf-complete-line)


"   __ | Goyo
"   ~better default mapping
nnoremap <C-o> :Goyo<cr>


"   __ | Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"   __ | Language Server
"   ~defaults for diagnostics
let g:LanguageClient_diagnosticsDisplay = {
      \   1: {
      \       "name": "Error",
      \       "texthl": "ALEError",
      \       "signText": "•",
      \       "signTexthl": "ALEErrorSign",
      \   },
      \   2: {
      \       "name": "Warning",
      \       "texthl": "ALEWarning",
      \       "signText": "•",
      \       "signTexthl": "ALEWarningSign",
      \   },
      \   3: {
      \       "name": "Information",
      \       "texthl": "ALEInfo",
      \       "signText": "•",
      \       "signTexthl": "ALEInfoSign",
      \   },
      \   4: {
      \       "name": "Hint",
      \       "texthl": "ALEInfo",
      \       "signText": "•",
      \       "signTexthl": "ALEInfoSign",
      \   },
      \ }
"   ~defaults for start language servers
let g:LanguageClient_autoStart = 1
"   ~defaults for server commands
let g:LanguageClient_serverCommands = {
      \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \ 'typescript': ['javascript-typescript-stdio'],
      \ 'html': ['html-languageserver', '--stdio'],
      \ 'liquid': ['html-languageserver', '--stdio'],
      \ 'css': ['css-languageserver', '--stdio'],
      \ 'sass': ['css-languageserver', '--stdio'],
      \ 'scss': ['css-languageserver', '--stdio'],
      \ }
"   ~always keep the signcolumn open!!
augroup LanguageClient_config
  autocmd!
  autocmd User LanguageClientStarted setlocal signcolumn=yes
  autocmd User LanguageClientStopped setlocal signcolumn=yes
augroup END


"   __ | Markdown
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1


"   __ | Multiple Cursors
"   ~enable custom mapping
let g:multi_cursor_use_default_mapping = 0
"   ~and these are the defaults
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
"   ~and this is mine
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>


"   __ | Neoformat
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_html = ['prettydiff']
let g:neoformat_enabled_liquid = ['prettydiff']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']


"   __ | Python Syntax
"   ~enable all
let python_highlight_all = 1


"   __ | Startify
"   ~no custom quotes
let g:startify_custom_header = []
let g:startify_list_order = [['Sessions'], 'sessions']


""   __ | Tern
"let g:tern#command = ["tern"]
"let g:tern#arguments = ["--persistent"]


"   __ | VimFiler
"   ~use as default file explorer
let g:vimfiler_as_default_explorer = 1
"   ~add devicons to vimfilers
let g:webdevicons_enable_vimfiler = 0
"   ~modify indentation
let g:vimfiler_tree_indentation = 2
"   ~default tree leaf icon
let g:vimfiler_tree_leaf_icon = ""
"   ~default tree opened icon
let g:vimfiler_tree_opened_icon = ""
"   ~default tree closed icon
let g:vimfiler_tree_closed_icon = ""
"   ~change default directory
let g:vimfiler_enable_auto_cd = 1
"   ~don't use safe mode by default
let g:vimfiler_safe_mode_by_default = 0
"   ~default profile
call vimfiler#custom#profile('default', 'context', {
      \ 'safe' : 0,
      \ 'auto-cd' : 1,
      \ })
"   ~don't hide dotfiles
let g:vimfiler_ignore_pattern = []
"   ~define custom hotkeys
"nnoremap <leader>f :VimFiler -winwidth=35 -toggle -split -simple -auto-cd -status -no-quit<cr>
nnoremap <leader>f :VimFilerBufferDir <cr>
"   ~because muscle memory..
nnoremap <leader>nt :VimFiler -explorer -winwidth=40<cr>
nnoremap <leader><space> :VimFilerBufferDir -explorer<cr>
"   ~don't use ctrl-l in vimfiler
augroup vimfiler
  autocmd!
  autocmd FileType vimfiler nunmap <buffer> <C-l>
augroup END


"   __ | vim-jsx
"   ~doesn't require '.jsx' extension
let g:jsx_ext_required = 0


"   __ | vim-parenmatch
"   ~disable by default
let g:parenmatch = 1


"   __ | vim-markdown
"   ~no folding by default
let g:vim_markdown_folding_disabled = 1

