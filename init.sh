## Pre-reqs
# keyboard repeat settings
# spotify, franz, chrome, discord, bear, hyper
# password -> pwpolicy -clearaccountpolicies
# disable SIP for yabai
# dock -> right, auto hide dock and menu bar
# remove everything from dock
# caps lock to escape (keyboard -> modifier keys
# finder -> cmd+shift+h drag ~ into favorite
# download insync 
# keyboard -> uncheck all shortcuts
# keyboard -> screenshot to clipboard == cmd+shift+s
# keyboard -> screenshot/recording options == cmd+shift+r
##

brew install nvim coreutils zsh koekeishiya/formulae/yabai koekeishiya/formulae/skhd

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/davay/dotfiles ~/Documents/.

ln -s ~/Documents/dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.config/yabai/

mkdir -p ~/.config/skhd/

ln -s ~/Documents/dotfiles/.config/yabai/yabairc ~/.config/yabai/

ln -s ~/Documents/dotfiles/.config/skhd/skhdrc ~/.config/skhd/

# create a new file for writing - visudo uses the vim editor by default.
# go read about this if you have no idea what is going on.
sudo visudo -f /private/etc/sudoers.d/yabai

# input the line below into the file you are editing.
# replace <user> with your username (output of: whoami). 
# change the path to the yabai binary if necessary  (output of: which yabai)
davay ALL = (root) NOPASSWD: /usr/local/bin/yabai --load-sa


brew services start yabai

brew services start skhd

