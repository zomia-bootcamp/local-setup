#!/usr/bin/env bash

# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # upgrade the version of git
  brew install git
  brew upgrade git
  # set default branch to main using upgraded git
  # (we use /usr/local/bin/git so we don't have to restart the terminal)
  /usr/local/bin/git config --global init.defaultBranch main
else
  # otherwise, if another operating system
  # set default branch to main
  git config --global init.defaultBranch main
fi

if [[ $(uname -s) != *"MINGW64"* ]]; then
# look for the following string in .bashrc
if grep -Fq "function parse_git_branch" ~/.bashrc
then
  # if function is in .bashrc, nothing needs to be done
  echo 'Git preferences for bash already added to ~/.bashrc'
else
  # otherwise, add the following to .bashrc
  # the function returns the current git branch
  # PS1 adds the current branch after current file in terminal
  # vscode set as default editor
cat <<'EOF' >> ~/.bashrc

# Git
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}
export PS1="\[$(tput bold)\]\w\[$(tput sgr0)\] \$(parse_git_branch)\n$ "
export EDITOR='code --wait'
export VISUAL='code --wait'

EOF

fi
else
  echo "You're on Windows and your git preferences are all set"
fi

# ask for username in terminal
# input saved as global git username
echo -e "\nWhat is your GitHub username?"
read username
git config --global user.name "$username"

# ask for email in terminal
# input saved as global git email
echo -e "\nWhat is your GitHub email address?"
read email
git config --global user.email "$email"

git config --global color.ui true
git config --global pull.rebase true
git config --global branch.autosetuprebase always
git config --global push.default simple
git config --global branch.autosetupmerge true
git config --global core.editor "code --wait"

# set global gitignore file as ~/.gitignore
git config --global core.excludesfile ~/.gitignore
# copy .gitignore from this directory to home directory
cp .gitignore ~/.gitignore

# generate new ssh key and add it
# the -t flag specifies the type of key
# the -f flag specifies the path
# the -N flag specifies a passphrase, blank in this case
# the -C flag adds a comment to help identify the SSH key
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N '' -C "$email"
ssh-add ~/.ssh/id_rsa

# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then
  # use pbcopy to copy contents of id_rsa.pub to clipboard
  pbcopy < ~/.ssh/id_rsa.pub
elif [[ $(uname -s) = *"MINGW64"* ]]; then
  # copy contents of id_rsa.pub to clipboard (windows)
  cat ~/.ssh/id_rsa.pub > /dev/clipboard
else
  # install xclip
  sudo apt install xclip
  # use xclip to copy contents of id_rsa.pub to clipboard
  xclip -selection clipboard < ~/.ssh/id_rsa.pub
fi

read -p "Key copied to clipboard. Log in and go to settings on Github. Follow these next steps outlined in Installfest doc, then press [ENTER] to continue."

# test ssh connection to github.com
ssh -T git@github.com
