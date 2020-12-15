setup-zsh:
	curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	rm -f ~/.zshrc
	ln -s ~/dotfiles/zsh/_zshrc ~/.zshrc
install-neovim:
	brew install neovim
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
	sh ./install.sh
	rm -f ./install.sh
	echo "TODO: インストール後にvimを起動して:NeoBundleInstallを実行する"
	mkdir -p ~/.vim/colors
	cd ~/.vim/colors; git clone https://github.com/tomasr/molokai.git; mv molokai/colors/molokai.vim ./
	ln -s ~/dotfiles/vim/_vimrc ~/.vimrc
	mkdir -p ~/.config/nvim; cd ~/.config/nvim; touch init.vim
	ln -s ~/dotfiles/vim/_init.vim ~/.config/nvim/init.vim
install-pyenv:
	git clone git://github.com/yyuu/pyenv.git ~/.pyenv
	brew install pyenv-virtualenv
	pyenv install 3.6.4
	pyenv install 2.7.17
	pyenv rehash
	pyenv global 3.6.4 2.7.17
	pip install neovim
	pip2 install neovim
	pip3 install neovim
install-circle-ci-cli:
	curl -fLSs https://circle.ci/cli | bash
install-nodeenv:
	git clone git://github.com/nodenv/nodenv.git ~/.nodenv
	git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
install-typescript:
	yarn add -g typescript
install-node-modlues:
	yarn install -g @aws-amplify/cli
install-go-module:
	go get -u google.golang.org/grpc
	go get github.com/golang/protobuf/protoc-gen-go
	go get -u github.com/golang/dep/cmd/dep
	go get -u github.com/gin-gonic/gin
brew-all:
	brew update
	brew install autoconf
	brew install curl
	brew install direnv
	brew install jq
	brew install node
	brew install rbenv
	brew tap hashicorp/tap
	brew install hashicorp/tap/terraform
	brew install tree
	brew install wget
	brew install protobuf
	brew tap grpc
	brew install grpc
	brew install yarn
	brew install git-secrets
	brew install peco
	