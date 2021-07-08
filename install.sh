########
#  i3  #
########

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"

ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

# xmodmap trial
rm -rf "$HOME/.xmodmap"
ln -sf "$HOME/dotfiles/.xmodmap" ~/
xmodmap ~/.xmodmap

# tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/.tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
