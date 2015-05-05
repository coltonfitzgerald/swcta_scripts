# NPM
npm config delete proxy
npm config delete https-proxy

# Ruby
  if [ -f "$HOME/.zshrc" ]; then
    sed -i '/export ALL_PROXY/d' ~/.zshrc
    echo "unset HTTP_PROXY" >> ~/.zshrc
    echo "unset http_proxy" >> ~/.zshrc
    echo "unset ALL_proxy" >> ~/.zshrc
    echo "Removed From ~/.zshrc"
  else
    sed -i '/export ALL_PROXY/d' ~/.bashrc
    echo "unset HTTP_PROXY" >> ~/.bashrc
    echo "unset http_proxy" >> ~/.bashrc
    echo "unset ALL_proxy" >> ~/.bashrc
    echo "Removed From ~/.bashrc"
  fi

# Git
git config --unset --global http.proxy
