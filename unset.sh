# NPM
npm config delete proxy
npm config delete https-proxy

# Ruby
	#if you're using bash instead of zsh change .zshrc to .bashrc
sed -i '/export ALL_PROXY/d' ~/.zshrc
echo "unset HTTP_PROXY" >> ~/.zshrc
echo "unset http_proxy" >> ~/.zshrc
echo "unset ALL_proxy" >> ~/.zshrc

# Git
git config --unset --global http.proxy
