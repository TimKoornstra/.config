#!/bin/bash

set -e

echo "🔧 Installing configuration..."

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_TARGET="$HOME/.config"

# Move tracked config folders
echo "📁 Moving configs to $CONFIG_TARGET..."

for dir in kitty nvim tmux zsh hypr; do
  if [ -d "$REPO_DIR/$dir" ]; then
    echo "→ Moving $dir to $CONFIG_TARGET/$dir"
    rm -rf "$CONFIG_TARGET/$dir"
    mv "$REPO_DIR/$dir" "$CONFIG_TARGET/$dir"
  fi
done

# Move Git repo data
echo "📦 Moving .git and .gitignore to $CONFIG_TARGET..."
mv "$REPO_DIR/.git" "$CONFIG_TARGET/.git"
[ -f "$REPO_DIR/.gitignore" ] && mv "$REPO_DIR/.gitignore" "$CONFIG_TARGET/.gitignore"

# Move setup script itself
mv "$REPO_DIR/setup.sh" "$CONFIG_TARGET/setup.sh"

# Symlinks
echo "🔗 Creating symlinks for .zshrc and .p10k.zsh..."
ln -sf "$CONFIG_TARGET/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$CONFIG_TARGET/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

echo "✅ Done! Your configs now live in ~/.config and are Git-tracked."
echo "➡️ To update in the future: cd ~/.config && git pull"

