# setup-zsh {{{
setup-zsh:
	curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	rm -f ~/.zshrc
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
	pyenv install 3.6.4
	pyenv rehash
	pyenv global 3.6.4
# }}}
# install-goenv {{{
install-goenv:
	git clone git://github.com/syndbg/goenv.git ~/.goenv
	goenv install 1.12.13
	goenv global 1.12.13
# }}}
