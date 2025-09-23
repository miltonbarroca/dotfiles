!/usr/bin/env zsh

echo "Verificando Oh My Zsh..."

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Instalando Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh já está instalado."
fi

Configura tema "refined"
if grep -q '^ZSH_THEME=' ~/.zshrc; then
    sed -i 's/^ZSH_THEME=.*/ZSH_THEME="refined"/' ~/.zshrc
else
    echo 'ZSH_THEME="refined"' >> ~/.zshrc
fi

echo "Oh My Zsh configurado com tema 'refined'."
