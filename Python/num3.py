#!/usr/bin/env python3
# Programa: Manipulacao de Números - Capitulo 3 (Python)
# Ambiente: Ubuntu / vscode
import sys, random
try:
    argv1 = float(sys.argv[1])
    if argv1.is_integer(): argv1 = int(argv1)
except (IndexError, ValueError):
    argv1 = None

N1 = random.randint(1,9)
n1 = argv1
if n1 is None :
    x = input("Digite um valor: ")
    try:
        n1 = float(x)
        if n1.is_integer(): n1 = int(n1)
    except ValueError:
        n1 = 0
  
print("\nOPERADORES UNÁRIOS")
print("+n1 = ", +n1)
print("-n1 = ", -n1)

print("\nOPERADORES COMPOSTOS:")
x = n1 ; x += N1 ; print("n1 += N1 = ", x)
x = n1 ; x -= N1 ; print("n1 -= N1 = ", x)
x = n1 ; x *= N1 ; print("n1 *= N1 = ", x)
x = n1 ; x /= N1 ; print("n1 /= N1 = ", x)
x = n1 ; x //= N1 ; print("n1 //= N1 = ", x)
x = n1 ; x %= N1 ; print("n1 %= N1 = ", x)
x = n1 ; x **= N1 ; print("n1 **= N1 = ", x)

print("\nDESAFIO:")
x = input("Adivinhe o valor da constante N1 (1-9): ")
palpite = int(x) if x.isdigit() else 0
print(f"Parabéns, você acertou! Era {N1}") if palpite == N1 else print(f"Não foi desta vez! Era {N1}")
