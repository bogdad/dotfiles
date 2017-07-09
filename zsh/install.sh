
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh


# clone
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
mkdir -p ~/.config/fontconfig/conf.d
cp fontconfig/50-enable-terminess-powerline.conf ~/.config/fontconfig/conf.d
font_dir="$HOME/Library/Fonts"
fc-cache -f $font_dir
cd ..

#rm -rf fonts
