clear
s=A1
printf '%-50s %-40s %s\n' "Comando com variável (Bash)" "Comando expandido (literal)" "Saída"
printf '%s\n' "---------------------------------------------------------------------------------------------"
echo -e "s=$s\t\t"'<-- primeiro caractere: letra'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\n' "awk -v var=\$s 'BEGIN{print var}'" "awk -v var=$s 'BEGIN{print var}'" "$(awk -v var=$s 'BEGIN{print var}')"
printf '%s\n' "---------------------------------------------------------------------------------------------"
s='A 1'
echo -e "s='$s'\t\t"'<-- primeiro caractere: letra; caractere espaço presente; aspas simples'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"
s="A 1"
echo -e "s=\"$s\"\t\t"'<-- primeiro caractere: letra; caractere espaço presente; aspas duplas'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"

