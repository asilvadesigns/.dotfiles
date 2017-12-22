"
"   Commands | Table of Contents
"
"     Files
"     FZF
"     Text
"     Terminal
"     Syntax
"     Vimrc


"   __ | Files
"   ~helper commands to make new files
command! NewHtml execute 'vnew' | execute 'SetHtml'
command! NewCss execute 'vnew' | execute 'SetCss'
command! NewScss execute 'vnew' | execute 'SetScss'
command! NewJs execute 'vnew' | execute 'SetJs'
command! NewJson execute 'vnew' | execute 'SetJson'
"   ~set vim current directory to current buffer directory
command! GoBufferDir execute ':lcd %:p:h'
"   ~just some custom aliases
command! GoDesktop execute ':cd ~/Desktop'
command! GoGithub execute ':cd ~/Desktop/Github'
command! GoHome execute ':cd ~'
command! GoProjects execute ':cd ~/Desktop/Projects'
command! GoSites execute ':cd ~/Sites'
"   ~useful
command! Finder execute ':! open .'
command! Browser execute ':! open %'


"   __ | FZF
"   ~https://github.com/junegunn/fzf.vim/issues/233 ~thanks JuneGunn
command! ProjectFiles execute system('git rev-parse --is-inside-work-tree') =~ 'true' ? 'GFiles' : 'Files'


"   __ | Text
"   ~clear all empty lines
command! DeleteAllEmptyLines execute 'g/^$/d'
"   ~make selection titlecase
command! MakeAllTitleCase execute ':%s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g'
"   ~soft wrap text toggle
command! ToggleWrap execute ':set wrap! linebreak!'
command! WrapToggle execute ':set wrap! linebreak!'


"   __ | Terminal
"   ~quickly split terminal
command! TermSplit execute 'vsplit | term'
command! SplitTerm execute 'vsplit | term'


"   __ | Syntax
"   ~helper commands to set syntax
command! SetHtml execute 'set ft=html'
command! SetCss execute 'set ft=css'
command! SetScss execute 'set ft=scss'
command! SetJs execute 'set ft=javascript'
command! SetJson execute 'set ft=json'


"   __ | Vimrc
"   ~quickly open vimrc
command! Vimrc execute 'e $MYVIMRC'
