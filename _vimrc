"----------------------------------
" 一般設定
"----------------------------------
set fenc=utf-8                       "文字コードをUTF-8に設定
set nobackup                         "バックアッップファイルを作らない
set noswapfile                       "スワップファイルを作らない
set autoread                         "編集中のファイルが変更されたら自動で読み直す
set hidden                           "バッファが編集中でもその他のファイルを開けるようにする 
set showcmd                          "入力中のコマンドをステータスに表示する
set number                           "行番号を表示する
set cursorline                       "現在の行を強調表示
set virtualedit=onemore              "行末の1文字先までカーソルを移動できるようにする
set smartindent                      "スマートインデントにする
set showmatch                        "括弧入力時の対応する括弧を表示
set laststatus=2                     "ステータスラインを常に表示
set wildmode=list:longest            "コマンドラインの補完
set list listchars=tab:\▸\-          "Tab文字を可視化する
set expandtab                        "Tab文字を半角スペースにする
set tabstop=2                        "行頭以外のTab文字の表示幅
set shiftwidth=2                     "行頭でのTab文字の表示幅
set ignorecase                       "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase                        "検索文字列に大文字が含まれている場合は区別して検索する
set incsearch                        "検索文字列入力時に順次対象文字列をヒットさせる
set wrapscan                         "検索時に最後まで行ったら最初に戻る
set hlsearch                         "検索後をハイライト表示
nmap <Esc><Esc> :nohlsearch<CR><Esc> "ESC連打でハイライト解除 


"----------------------------------
" NeoBungle設定
"----------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/dotfiles/.vim/bundle'))
endif

"call neobundle#begin(expand('~/dotfiles/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundle here:
NeoBundle 'Shougo/unite.vim'

call neobundle#end()

filetype plugin indent on
