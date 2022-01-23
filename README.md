# Dotfiles

.bash_aliases
.bashrc
.gitconfig
.vimrc


## Dev Font
https://github.com/tonsky/FiraCode


## GPG

### Install

```bash
# OSX
brew install gnupg gpg-agent pinentry-mac
```

### Git Config
```
git config --global user.signingkey <YOUR-SIGNING-KEY-PUB-ID>
git config --global commit.gpgsign true
```
