#!/usr/bin/env bash
file="$1"
[ -z "$1" ] && read -p "Digite o nome do arquivo: " file
echo Nome atribuído: \"$file\"
echo Operadores de teste para arquivos
echo -e "Operador\tDescrição\t\t\tComando\t\t\tResultado"
echo -ne "-a\t\texists *obsolete*\t\t[ -a \"\$file\" ]; echo \$?\t";[ -a "$file" ]; echo $?
echo -ne "-b\t\tblock device file\t\t[ -b \"\$file\" ]; echo \$?\t";[ -b "$file" ]; echo $?
echo -ne "-c\t\tcharacter device file\t\t[ -c \"\$file\" ]; echo \$?\t";[ -c "$file" ]; echo $?
echo -ne "-d\t\tdirectory       \t\t[ -d \"\$file\" ]; echo \$?\t";[ -d "$file" ]; echo $?
echo -ne "-e\t\texists          \t\t[ -e \"\$file\" ]; echo \$?\t";[ -e "$file" ]; echo $?
echo -ne "-f\t\tregular file    \t\t[ -f \"\$file\" ]; echo \$?\t";[ -f "$file" ]; echo $?
echo -ne "-g\t\tset group ID flag\t\t[ -g \"\$file\" ]; echo \$?\t";[ -g "$file" ]; echo $?
echo -ne "-h\t\tsymbolic link   \t\t[ -h \"\$file\" ]; echo \$?\t";[ -h "$file" ]; echo $?
echo -ne "-L\t\tsymbolic link   \t\t[ -L \"\$file\" ]; echo \$?\t";[ -L "$file" ]; echo $?
echo -ne "-k\t\tsticky bit set   \t\t[ -k \"\$file\" ]; echo \$?\t";[ -k "$file" ]; echo $?
echo -ne "-n\t\tnon empty string\t\t[ -n \"\$file\" ]; echo \$?\t";[ -n "$file" ]; echo $?
echo -ne "-o\t\towned-by-user file\t\t[ -o \"\$file\" ]; echo \$?\t";[ -o "$file" ]; echo $?
echo -ne "-p\t\tnamed pipe (FIFO)\t\t[ -p \"\$file\" ]; echo \$?\t";[ -p "$file" ]; echo $?
echo -ne "-r\t\treadable file   \t\t[ -r \"\$file\" ]; echo \$?\t";[ -r "$file" ]; echo $?
echo -ne "-s\t\tsize > 0        \t\t[ -s \"\$file\" ]; echo \$?\t";[ -s "$file" ]; echo $?
echo -ne "-t\t\topen terminal   \t\t[ -t \"\$file\" ]; echo \$?\t";[ -t "$file" ]; echo $?
echo -ne "-u\t\tset user ID flag\t\t[ -u \"\$file\" ]; echo \$?\t";[ -u "$file" ]; echo $?
echo -ne "-v\t\tvariable declared\t\t[[ -v file ]]; echo \$?\t";[[ -v file ]]; echo $?
echo -ne "-w\t\twritable file   \t\t[ -w \"\$file\" ]; echo \$?\t";[ -w "$file" ]; echo $?
echo -ne "-x\t\texecutable file \t\t[ -x \"\$file\" ]; echo \$?\t";[ -x "$file" ]; echo $?
echo -ne "-z\t\tempty string    \t\t[ -z \"\$file\" ]; echo \$?\t";[ -z "$file" ]; echo $?
