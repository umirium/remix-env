#/bin/bash

# If there is "initialized", the following code will not be executed
# because it has already been initialized.
if [ -f "/initialized" ]; then
  exit 0
fi

# add git alias to .gitconfig
git config --global alias.a add
git config --global alias.ci commit
git config --global alias.s switch
git config --global alias.sc 'switch -c'
git config --global alias.c checkout
git config --global alias.cb 'checkout -b'
git config --global alias.b branch
git config --global alias.ba 'branch -a'
git config --global alias.m merge
git config --global alias.p pull
git config --global alias.ps push
git config --global alias.g "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.ga "log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

touch /initialized
