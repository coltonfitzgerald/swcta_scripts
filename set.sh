proxy=http://proxy.ccsd.net:80
# NPM
npm config set proxy $proxy
npm config set https-proxy $proxy

# Ruby

# Git
git config --global http.proxy $proxy
