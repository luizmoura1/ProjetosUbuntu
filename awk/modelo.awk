#!/usr/bin/awk -f

BEGIN {
    # cabeçalho opcional; excecute AWK commands from BEGIN block
}

{
    # processamento padrão; read a line from input stream (file, pipe, stdin) and stores it in memory
    # execute AWK commands on a line
    # repeat if it is not End Of Line
    print
}

END {
    # rodapé opcional; excecute AWK commands from END block
}
