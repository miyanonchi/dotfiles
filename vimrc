" タブを入力したときにスペースに置き換える
set expandtab
" 画面上のタブ幅
set tabstop=4
" 自動インデントでずれる幅
set shiftwidth=4
" 改行したときに前の行のインデントを継続
set autoindent
" ターミナルのタイトルを設定する
set title
" 行番号を表示
set number
" 検索単語のハイライト
set hlsearch
set display=lastline
" 
set whichwrap=b,s,h,l,<,>,[,]
" ルーラー表示
set ruler
" 対応するかっこを0.2秒間表示する
set showmatch
set matchtime=2
" 入力中のコマンドを表示する
set showcmd
" 不可視文字を可視化する
set list
set listchars=tab:>\ ,trail:-,eol:$,extends:>,precedes:<
" スクロールさせるときに縦横を同期させる(デフォルト:縦だけ)
set scrollopt=ver,hor,jump
" 常に下5行を残してスクロールする
set scrolloff=5

" ステータスラインを常に表示
set laststatus=2
""""""""""""""""""""""""
" ステータスライン設定 "
""""""""""""""""""""""""
set statusline=%f\ \                       " ファイル名
set statusline+=[buf=%n]\                  " バッファ番号
set statusline+=[%c,%l/%L\ %P]             " カーソル位置/全体行数
set statusline+=%m                         " 変更チェック
set statusline+=%r                         " 読み込み専用かどうか
set statusline+=%h                         " ヘルプページかどうか
set statusline+=%w                         " プレビューかどうか
set statusline+=%=                         " これ以降右寄せ
set statusline+=[enc=%{&fileencoding}]\    " エンコーディング

syntax on
syntax enable

set t_Co=256
colorscheme molokai

" map系で後続の文字を待つ時間(ms)
set timeoutlen=250

autocmd VimEnter,Colorscheme * highlight SpecialKey ctermfg=8 ctermbg=NONE
autocmd VimEnter,Colorscheme * highlight Search ctermfg=88 ctermbg=255

" インサートモードでもjj押すとEsc押したことになる
inoremap <silent> jj <ESC>

" ヤンクした後にddとか押してもpp押すとヤンクした内容が貼り付けれる
noremap pp "0p
noremap PP "0P

" Yでカーソル位置から末尾までヤンク
noremap Y y$

" 数値を+1,-1するのを+と-に割り当てる
noremap + <C-a>
noremap - <C-x>

" カッコの補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"function! ZenkakuSpace()
"  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgray
"endfunction

"if has('syntax')
"  augroup ZenkakuSpace
"    autocmd!
"    autocmd ColorScheme * ZenkakuSpace()
"    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
"    autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
" augroup END
" call ZenkakuSpace()
"endif

