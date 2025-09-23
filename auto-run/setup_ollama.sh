#!/bin/bash
# ~/dotfiles/scripts/install_ollama.sh

echo "Verificando instalação do Ollama..."

if ! command -v ollama &> /dev/null
then
    echo "Ollama não encontrado, instalando..."
    curl -fsSL https://ollama.ai/install.sh | sh
    echo "Ollama instalado com sucesso!"
else
    echo "Ollama já está instalado."
fi

echo "Proximo passo: Escolha um Modelo compativel com a maquina para utilizar..."
# Opcional: baixar o modelo leve DeepSeek R1:1.5B
# MODEL_NAME="deepseek-r1:1.5b"
# if ! ollama list models | grep -q "$MODEL_NAME"; then
#     echo "Baixando modelo $MODEL_NAME..."
#     ollama pull $MODEL_NAME
#     echo "Modelo $MODEL_NAME pronto para uso!"
# else
#     echo "Modelo $MODEL_NAME já existe."
# fi
