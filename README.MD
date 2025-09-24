# Dotfiles – Manjaro Linux

Este repositório centraliza todas as customizações e scripts para Manjaro Linux.  
Todos os scripts, configurações do terminal, Fastfetch e Zsh são mantidos centralizados no dotfiles.

---

## Instalação e Setup

Após clonar o repositório, rode:

```bash
cd ~/dotfiles
./setup.sh

Ativar o venv (se necessário):

source venv/bin/activate

Nota: Nos scripts, o nome do arquivo será o symlink para executá-los diretamente.

Atualizar os submódulos:

git submodule update --remote --merge