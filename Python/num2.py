#!/usr/bin/env python3
# Programa: Manipulacao de Números - Capitulo 2 (Python)
# Ambiente: Ubuntu / vscode
import sys, random
try:
    argv1 = float(sys.argv[1])
except (IndexError, ValueError):
    argv1 = None

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
x = input("Digite um valor inteiro nao negativo: ")
try:
    n1 = float(x)
except ValueError:
    n1 = 0
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
