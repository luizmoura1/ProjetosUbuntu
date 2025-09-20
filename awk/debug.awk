#!/usr/bin/awk -f

BEGIN {
    print ">>> Início do programa (BEGIN)"
}

{
    print ">>> Nova linha lida:"
    print "    Linha completa ($0):", $0
    print "    Primeiro campo ($1):", $1
    print "    Número de campos (NF):", NF
}

END {
    print ">>> Fim do programa (END)"
}

