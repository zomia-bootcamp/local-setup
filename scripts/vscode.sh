#!/usr/bin/env bash
# if operating system is macOS
if [[ $(uname -s) = 'Darwin' ]]; then

  # Check for Visual Studio Code app in the Applications folder
  if [[ -d '/Applications/Visual Studio Code.app' ]]
  then
    echo "Visual Studio already installed. Moving on to code command."
  else
    # Install VSCode via Homebrew
    brew install --cask visual-studio-code
  fi
  
  # If the code command already exists, no need to edit bash profile
  if ! command -v code &> /dev/null
  then
    echo 'export PATH="/$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> ~/.bash_profile
  else
    echo "code command found. Moving on to extensions."
  fi
else
  # install VSCode for linux
  # add package repo to system
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

  sudo apt install apt-transport-https
  sudo apt update
  sudo apt install code
fi

# if code exists on PATH install these packages
if command -v code &> /dev/null
then
  code --install-extension dbaeumer.vscode-eslint \
  --install-extension esbenp.prettier-vscode \
  --install-extension christian-kohler.path-intellisense \
  --install-extension streetsidesoftware.code-spell-checker \
  --install-extension	ms-python.python \
  --install-extension dbaeumer.vscode-eslint \
  --install-extension mikestead.dotenv \
  --install-extension mkaufman.HTMLHint \
  --install-extension ecmel.vscode-html-css \
  --install-extension steve8708.Align \
  --install-extension yzhang.markdown-all-in-one \
  --install-extension esbenp.prettier-vscode \
  --install-extension sibiraj-s.vscode-scss-formatter \
  --install-extension EditorConfig.EditorConfig \
  --install-extension CoenraadS.bracket-pair-colorizer-2 \
  --install-extension capaj.vscode-standardjs-snippets \
  --install-extension jaspernorth.vscode-pigments \
  --install-extension formulahendry.auto-close-tag
  code .
  read -p "\n\nPlease wait for VSCode to open, and then close it with CMD+Q on macOS (or CTRL+Q on Linux) and press Enter to continue\n"
else
  echo -e "\ncode - command not found. Open VSCode and press CMD+Shift+P (or CTRL+Shift+P), then type 'shell command'. Click 'Install code command in PATH' and rerun the script. If issues, ask for assistance. \n"
fi

if [[ $(uname -s) = 'Darwin' ]]; then
  cat ./scripts/settings.json > "$HOME/Library/Application Support/Code/User/settings.json"
else
  cat ./scripts/settings.json > $HOME/.config/Code/User/settings.json
fi
