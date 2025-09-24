# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# .zshrc — versão para usar dentro do ~/dotfiles
# Coloque este arquivo em: ~/dotfiles/zsh/.zshrc
# O objetivo: manter plugins em ~/dotfiles/zsh/plugins e usar Oh My Zsh normalmente.

# Path do Oh My Zsh (presumimos que você já instalou o Oh My Zsh em ~/.oh-my-zsh)
export ZSH="$HOME/.oh-my-zsh"

# Define o "custom" para seu dotfiles — assim os plugins vivem no repo
export ZSH_CUSTOM="$HOME/dotfiles/zsh"

# Tema (troque se quiser)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Arquivo de aliases do dotfiles
DOTFILES_ZSH="$HOME/dotfiles/zsh"

# Plugins que queremos ativar — o Oh My Zsh tentará carregá-los de $ZSH_CUSTOM/plugins/
plugins=(
  git
  zsh-autosuggestions
  zsh-completions
#   zsh-hystory-substring-search
)

# Seta variáveis opcionais
# DISABLE_AUTO_UPDATE="true"  # descomente se não quiser updates automáticos

# Carrega o Oh My Zsh se estiver instalado
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# --- completions: garante que zsh-completions seja encontrado (o plugin usa 'src/')
fpath=("$ZSH_CUSTOM/plugins/zsh-completions/src" $fpath)

# Inicializa o sistema de completions
autoload -Uz compinit
# Se der erro de "insecure directories", veja a seção de troubleshooting abaixo
compinit || true

# --- zsh-autosuggestions: carrega caso não tenha sido carregado pelo Oh My Zsh
if [ -f "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# --- custom aliases do seu repo
[ -f "$DOTFILES_ZSH/custom_aliases.zsh" ] && source "$DOTFILES_ZSH/custom_aliases.zsh"

# --- zsh-syntax-highlighting MUST be sourced LAST to funcionar corretamente
if [ -f "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# --- Troubleshooting rápido
# 1) Se o compinit reclamar de "insecure directories": execute
#      compaudit
#    e cheque a lista. Se você confiar nos diretórios, corrige com:
#      compaudit | xargs chmod g-w
#    (execute isso com cuidado; prefira revisar a saída antes de aplicar)

# 2) Se as cores do zsh-syntax-highlighting não aparecerem, confirme que ele foi clonado em:
#      $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# 3) Se preferir manter os plugins em ~/.oh-my-zsh/custom/plugins em vez do dotfiles,
#    basta clonar lá e remover/ignorar o passo de cloná-los dentro do repo.

# Fim do arquivo

# source ~/.zshrc -> recarrega o zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
