"
"   Theme | Table of Contents
"
"     ColorScheme
"     Devicons
"     Font
"     Scrollbar
"     Statusline
"     Syntax
"     Theme


"   __ | ColorScheme
"   https://speakerdeck.com/cocopon/creating-your-lovely-color-scheme
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has("termguicolors"))
  set termguicolors
endif

"   ~set colorscheme
colorscheme atomtheif
"   ~set cursorline
set cursorline


"   __ | Devicons
"   ~set updatetime so new files in NERDTree get updated
"set updatetime=250
"   ~default file icon
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
"let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
"   ~default folder icon
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
"   ~custom file icons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['php'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['scss'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ds_store'] = ''


"   __ | Scrollbar
"   ~disable left and right scrollbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


"   __ | Statusline
"   ~enable it
set laststatus=2
"   ~define function for filename
function! FileName()
  let ext=tolower(expand("%:e"))
  return ext
endfunction

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  "\   ' %d  %d  ',
  return printf(
        \   ' %d  %d  ',
        \   all_errors,
        \   all_non_errors
        \)
endfunction

"set numberwidth=4
set statusline=
set statusline+=\ \ \ %{LinterStatus()}
"set statusline+=\ %04l
"set statusline+=\ •\ %3c
"set statusline+=\ •\ %3p%%
"set statusline+=\ \ \ %.30F\ %{WebDevIconsGetFileTypeSymbol()}
"set statusline+=\ •\ %t\ %{WebDevIconsGetFileTypeSymbol()}
"set statusline+=\ \ \ %t
"set statusline+=\ \ %{toupper(mode())}

"set statusline+=\ %02p%%
"set statusline+=\:\%04l

"set statusline+=\ •\ %l
set statusline+=\ %.40F
"set statusline+=:\%-4c
"set statusline+=%#ErrorMsg#
"set statusline+=\ %{getbufvar(bufnr('%'),'&mod')?'':'\ '}

set statusline+=\ \ \ \%l
set statusline+=\:
set statusline+=\%c

set statusline+=%=
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\ \|\ %{&fileformat}
"set statusline+=\ \|\ %y
set statusline+=\ %y


"   __ | Syntax
"   ~limit syntax column highlights
set synmaxcol=255
"   ~change bg color after 80 columns
"execute "set colorcolumn=" . join(range(81,335), ',')
"   ~enable colorcolumn


"   __ | Theme
"   ~no borders between panes
set fillchars+=vert:\|
"   ~change colors on insert mode
augroup Mode_Indicators
  autocmd!
  autocmd InsertEnter * hi CursorLine gui=NONE guifg=NONE guibg=#383444
  autocmd InsertLeave * hi CursorLine gui=NONE guifg=NONE guibg=#2c313c
augroup END
"   ~hide cursor line in inactive buffer
augroup CursorLine
  au!
  au VimEnter * setlocal cursorline
  au WinEnter * setlocal cursorline
  au BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
