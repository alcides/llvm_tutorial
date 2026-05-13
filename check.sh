#!/usr/bin/env bash
# Verifica que o LLVM (clang, llc, lli) está instalado e funcional.

set -u

for tool in clang llc lli; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    echo "ERRO: $tool não encontrado no PATH. Verifica a instalação do LLVM."
    exit 1
  fi
done

echo "Versão do LLVM:"
llc --version | head -2

# C -> LLVM IR -> assembly -> binário
clang -S -emit-llvm helloworld.c -o helloworld.ll
llc helloworld.ll -o helloworld.s
clang -o helloworld helloworld.s

if [ -x ./helloworld ]; then
  echo "LLVM instalado com sucesso."
else
  echo "ERRO: falhou a gerar o executável."
  exit 1
fi

./helloworld
