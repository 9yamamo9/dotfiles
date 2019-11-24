# setup-zsh {{{
setup-zsh:
	ln -s ~/dotfiles/zsh/_zshrc ~/.zshrc
# }}}
# install-neovim {{{
install-neovim:
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
	sh ./install.sh
	rm -f ./install.sh
# }}}
# setup-vim {{{
setting-vim:
	mkdir -p ~/.vim/colors
	cd ~/.vim/colors; git clone https://github.com/tomasr/molokai; mv molokai/colors/molokai.vim ./
	ln -s ~/dotfiles/vim/_vimrc ~/.vimrc
# }}}
# install-pyenv {{{
install-pyenv:
	git clone git://github.com/yyuu/pyenv.git ~/.pyenv
	brew install pyenv-virtualenv
	pyenv install 2.7.14
	pyenv install 3.6.4
# }}}
# install-goenv {{{
install-goenv:
	git clone git://github.com/syndbg/goenv.git ~/.goenv
# }}}
