" 更新日 ; 2016/12/19 11:00
" 画面左に行数を表示
set number

" 括弧補完入力
" noremap { {}<Left>  Townk/vim-autocloseによって代替
" noremap [ []<Left>  Townk/vim-autocloseによって代替
" inoremap ( ()<ESC>i Townk/vim-autocloseによって代替
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" エンコード設定
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" インデント設定
set tabstop=4
set shiftwidth=4
set softtabstop=0
set cmdheight=2
set laststatus=2
set cursorline
set autoindent

" キーマップ
" For NerdTree open
nnoremap <silent><C-e> :NERDTreeToggle<CR>

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

" カラースキーム
syntax on
colorscheme molokai

" vundle Initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" plugin list
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/nerdtree'
