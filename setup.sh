# Rom Dir
mkdir ~/arrow && cd ~/arrow

# Cache setup
export CCACHE_DIR=~/ccache/arrow/vince
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 100G
ccache -z

# Git
echo "https://GhostMaster69-dev:$GL_TOKEN@gitlab.com" > ~/.git-credentials && echo "https://GhostMaster69-dev:$GH_TOKEN@github.com" >> ~/.git-credentials && git config --global credential.helper "store --file ~/.git-credentials"
