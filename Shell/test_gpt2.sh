clear
s=1A
printf '%-50s %-40s %s\n' "Comando com variável (Bash)" "Comando expandido (literal)" "Saída"
printf '%s\n' "---------------------------------------------------------------------------------------------"
echo -e "s=$s\t\t"'<-- primeiro caractere: dígito'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\n' "awk -v var=\$s 'BEGIN{print var}'" "awk -v var=$s 'BEGIN{print var}'" "$(awk -v var=$s 'BEGIN{print var}')"
printf '%s\n' "---------------------------------------------------------------------------------------------"
s='1 A'
echo -e "s='$s'\t\t"'<-- primeiro caractere: dígito; caractere espaço presente; aspas simples'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
#echo -e "\nsua 1a solução:"
#printf '%-50s %-40s %s\n' "awk -v var=\$s 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'" "$(awk -v var=\"$s\" 'BEGIN{print var}')"
#echo -e "\nminha primeira modificação (o problema está na 3a string!):"
#printf '%-50s %-40s %s\n' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'" #"$(awk -v var=\"$s\" 'BEGIN{print var}')"
#echo -e "\nsua 2a e 3a soluções (que são exatamente as mesmas):"
#printf '%-50s %-40s %s\n' \
#"awk -v var=\"\$s\" 'BEGIN{print var}'" \
#"awk -v var=\"$s\" 'BEGIN{print var}'" \
#"$(awk -v var=\"$s\" 'BEGIN{print var}')"
#echo -e "\nminha segunda modificação (tive que substituir a 3a string pelo comando propriamente dito):"
printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"
s="1 A"
echo -e "s=\"$s\"\t\t"'<-- primeiro caractere: dígito; caractere espaço presente; aspas duplas'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"

