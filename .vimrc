" Set up for multibyte char
scriptencoding utf-8

"左右のカーソル移動で行間移動可能にする。
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]

" 画面左に行数を表示
set number

" 括弧補完入力
" noremap { {}<Left>  Townk/vim-autocloseによって代替
" noremap [ []<Left>  Townk/vim-autocloseによって代替
" inoremap ( ()<ESC>i Townk/vim-autocloseによって代替
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" undoファイルを生成しない
set noundofile

" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" インデント設定
" set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set cmdheight=2
set laststatus=2
set cursorline

"バックスペースで改行とタブを消せるようにする。
set backspace=2

" キーマップ
" For NerdTree open
" 一部のディレクトリが表示されない問題があるためアンインストール
nnoremap <silent><C-e> :NERDTreeToggle<CR>
noremap <C-j> <esc>
noremap! <C-j> <esc>

" ステータスライン表示設定
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" 入力コマンドを表示
set showcmd

" コマンド補完 入力中にtab
set wildmenu    " コマンド補完on
set history=500 " 記憶コマンド数

" カラースキーム
syntax on
" colorscheme molokai
colorscheme koehler
" set background=black
" colorscheme hybrid

" vundle Initialize
" set nocompatible " 前で既にこのコマンドを記述している為コメントアウト
filetype off    " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
		
" plugin list
Bundle 'Townk/vim-autoclose'
" 一部のディレクトリが表示されない問題があるためアンインストール
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
