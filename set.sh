proxy=http://proxy.ccsd.net:80
# NPM
npm config set proxy $proxy
npm config set https-proxy $proxy

# Ruby
	#if you're using bash instead of zsh change .zshrc to .bashrc
echo "export ALL_PROXY=\"http://proxy.ccsd.net\"" >> ~/.zshrc
sed -i '/unset HTTP_PROXY/d' ~/.zshrc
sed -i '/unset http_proxy/d' ~/.zshrc
sed -i '/unset ALL_PROXY/d' ~/.zshrc

# Git
git config --global http.proxy $proxy
