"
"   Hotkeys | Table of Contents
"
"     Leader
"     Buffers
"     Code
"     Copy & Paste
"     Editing
"     Files
"     Selection
"     Searching
"     Tabs & Indents
"     Terminal
"     Time


"   __ | Leader
"   ~set leader mapping
let g:mapleader = ','


"   __ | Buffers
"   ~delete current buffer
map <leader>w :bd<cr>
"   ~delete current buffer without saving
map <leader>d :bd!<cr>
"   ~exit current buffer
map <leader>e :exit<cr>
"   ~quit current window
map <leader>q :q<cr>
"   ~close current window
map <leader>x <C-w>c<cr>
"   ~reload current buffer
map <leader>r :e<cr>
"   ~source current file
map <leader>o :so%<cr>
"   ~save current buffer
map <leader>s :w<cr>
"   ~quickly move between buffers
nnoremap ) :bnext<cr>
nnoremap ( :bprevious<cr>
"   ~quickly move between panes
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
"   ~quickly resize panes horizontally
nnoremap <C-[> <C-W>5<
nnoremap <C-]> <C-W>5>


"   __ | Code | HTML
"   ~paste tag below
nnoremap <leader>pb vatygv<c-[>o<cr><c-[>pvat=kdd
"   ~join tag
nnoremap <leader>jt JxJx<c-[>0w
"   ~prepend html attribute
nnoremap <leader>pa 0wea<Space>
"   ~append html attribute
nnoremap <leader>aa 0w%i<Space>
"   ~append class
nnoremap <leader>ac 0/class<cr>/"<~cr>ni<Space>
"   remove first html attribute
nnoremap <leader>ra 0wewdt"da"<Esc>


"   __ | Copy & Paste
"   ~copy paste like it should be
vnoremap <C-c> "*y<cr>


"   __ | Editing
"   ~go to end of line in insert mode
inoremap <c-e> <esc>A
"   ~auto complete file path using omnifunc
inoremap <c-f> <c-x><c-f>


"   __ | Selection
"   ~quickly select all
map <leader>va ggVG


"   __ | Searching
"   ~search and replace word under cursor (,*) - thanks Paul Irish
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>
"   ~clear last searched item
nnoremap <leader>no :noh<cr>


"   __ | Tabs & Indents
"   ~behave as expected
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


"   __ | Terminals
"   ~open terminal in a nice way
nnoremap <C-W>t :SplitTerm<cr>
nnoremap <C-t> :terminal<cr>


"   __ | Time
"   ~enter current time like a smooth criminal..
inoremap <special> <F3> <c-r>=strftime('%c')<CR>
