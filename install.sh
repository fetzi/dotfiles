
# install brew
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap homebrew/bundle
brew bundle

# set default shell
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

/usr/local/bin/composer global require laravel/valet fetzi/phpspec-watcher

# valet
$HOME/.composer/vendor/bin/valet install

mkdir $HOME/projects

echo "source ~/.dotfiles/.zshrc" > $HOME/.zshrc

source .macos
