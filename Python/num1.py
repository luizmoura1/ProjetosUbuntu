#!/usr/bin/env python3
# Programa: Manipulacao de Números - Capitulo 2 (Python)
# Ambiente: Ubuntu / vscode
import sys, random
argv1 = int(sys.argv[1]) if len(sys.argv) > 1 and sys.argv[1].isdigit() else None
# ATENÇÃO: número negativo e/ou decimal informado em linha de comando é convertido a None
N1 = random.randint(1,9)
n1 = None

print("LITERAL NUMERICA:")
print("\033[7m41\033[0m")
 
print("\nVALOR INICIAL DA VARIAVEL:")
print("n1 = ", n1)
 
n1 = 7
print("\nNOVA ATRIBUICAO:")
print("n1 = ", n1)
 
print("\nENTRADA VIA ARGUMENTO:")
n1 = argv1
print("n1 = ", n1)

print("\nENTRADA INTERATIVA:")
x = input("Digite um valor inteiro nao negativo: ")     # número negativo e/ou decimal é convertido a 0
n1 = int(x) if x.isdigit() else 0
print("n1 = ", n1)
  
print("\nOPERACOES ARITMETICAS:")
print("n1 + N1 = ", n1 + N1)
print("n1 - N1 = ", n1 - N1)
print("n1 * N1 = ", n1 * N1)
print("n1 / N1 = ", n1 / N1)
print("n1 // N1 = ", n1 // N1)
print("n1 % N1 = ", n1 % N1)
print("n1 ** N1 = ", n1 ** N1)
  	
print("\nDESAFIO:")
x = input("Adivinhe o valor da constante N1 (1-9): ")
palpite = int(x) if x.isdigit() else 0
print(f"Parabéns, você acertou! Era {N1}") if palpite == N1 else print(f"Não foi desta vez! Era {N1}")
