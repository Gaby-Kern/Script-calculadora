#!/bin/bash

# Boas-vindas
echo "Bem-vindo(a) à calculadora!"
read -p "Digite seu nome: " nome
echo "Seja bem-vindo(a), $nome"

# Repetir até que o usuário digite 3 números separados por vírgula
while true; do
  read -p "Digite três números separados por vírgula: " valores
  IFS=',' read -ra lista <<< "$valores"
  if [ "${#lista[@]}" -ne 3 ]; then
    echo "Erro: digite exatamente 3 números."
  else
    break
  fi
done

# Conversão dos valores e cálculo
a=${lista[0]}
b=${lista[1]}
c=${lista[2]}

# Usa bc para permitir operações com ponto flutuante
soma=$(echo "$a + $b + $c" | bc)
subtracao=$(echo "$a - $b - $c" | bc)
multiplicacao=$(echo "$a * $b * $c" | bc)

# Resultados
echo "Soma: $soma"
echo "Subtração: $subtracao"
echo "Multiplicação: $multiplicacao"

