clear
s="'A 1'"
echo -e "s=\"$s\"\t\t"'<-- caracteres presentes: aspas simples e espaço'
# 1. print direto
printf '%-50s %-40s %s\n' "awk 'BEGIN{print \"'\"\$s\"'\"}'" "awk 'BEGIN{print \"'\"$s\"'\"}'" "$(awk 'BEGIN{print "'"$s"'"}')"
# 2. print com var dentro
printf '%-50s %-40s %s\n' "awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" "awk 'BEGIN{var=\"'\"$s\"'\";print var}'" "$(awk 'BEGIN{var="'"$s"'";print var}')"
# 3. usando -v
printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"
s='"A 1"'
echo -e "s='$s'\t\t"'<-- caracteres presentes: aspas duplas e espaço'
# 1. print direto
#Não sei como fazer
# 2. print com var dentro
#Não sei como fazer
# 3. usando -v
echo 'Soluções do GPT para as 2 primeiras linhas:'


escaped=${s//\"/\\\"}

printf '%-50s %-40s %s\n' \
"awk 'BEGIN{print \"'\"\$s\"'\"}'" \
"awk 'BEGIN{print \"'\"$escaped\"'\"}'" \
"$(awk 'BEGIN{print "'"$escaped"'"}')"

printf '%-50s %-40s %s\n' \
"awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" \
"awk 'BEGIN{var=\"'\"$escaped\"'\";print var}'" \
"$(awk 'BEGIN{var="'"$escaped"'";print var}')"


















echo;echo 'solução do gpt para a 3a linha:'
printf '%-50s %-40s %s\n' \
"awk -v var='\"A 1\"' 'BEGIN{print var}'" \
"awk -v var=\"$s\" 'BEGIN{print var}'" \
"$(awk -v var="$s" 'BEGIN{print var}')"
echo;echo 'minha solução original para a 3a linha:'

printf '%-50s %-40s %s\t' "awk -v var=\"\$s\" 'BEGIN{print var}'" "awk -v var=\"$s\" 'BEGIN{print var}'"; awk -v var="$s" 'BEGIN{print var}'
printf '%s\n' "---------------------------------------------------------------------------------------------"


