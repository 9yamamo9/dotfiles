zsh-setup:
	brew install zplug
	zplug "momo-lab/zsh-addrev-alias"

go-setup:
	go get -u golang.org/x/tools/cmd/goimports
	go get -u golang.org/x/tools/cmd/godoc
	go get -u golang.org/x/tools/cmd/cover
	go get -u github.com/nsf/gocode
	go get -u github.com/golang/lint/golint
	go get -u github.com/rogpeppe/godef
	go get -u github.com/jstemmer/gotags

ruby-atom-uetup:
	sudo gem install rsense
