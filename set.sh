proxy=http://proxy.ccsd.net:80

# NPM
npm config set proxy $proxy
npm config set https-proxy $proxy

# Ruby

if [ -f "$HOME/.zshrc" ]; # Check if using oh-my-zsh
then 
  echo "export ALL_PROXY=\"http://proxy.ccsd.net\"" >> ~/.zshrc
  sed -i '/unset HTTP_PROXY/d' ~/.zshrc
  sed -i '/unset http_proxy/d' ~/.zshrc
  sed -i '/unset ALL_PROXY/d' ~/.zshrc
  echo "Added to ~/.zshrc"
else # If not, edit bash config
  echo "export ALL_PROXY=\"$proxy\"" >> ~/.bashrc
  sed -i '/unset HTTP_PROXY/d' ~/.bashrc
  sed -i '/unset http_proxy/d' ~/.bashrc
  sed -i '/unset ALL_PROXY/d' ~/.bashrc
  echo "Added to ~/.bashrc"
fi

# Git
git config --global http.proxy $proxy
