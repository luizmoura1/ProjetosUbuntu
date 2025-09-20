s='"A 1"'
echo -e "s='$s'\t\t"'<-- caracteres presentes: aspas duplas e espaço'

# 1. print direto
printf '%-50s %-40s %s\n' \
"awk 'BEGIN{print \"'\"\$s\"'\"}'" \
"awk 'BEGIN{print \\\"\\\"A 1\\\"\\\"}'" \
"$(awk 'BEGIN{print "'"$s"'"}')"

# 2. print com var dentro
printf '%-50s %-40s %s\n' \
"awk 'BEGIN{var=\"'\"\$s\"'\";print var}'" \
"awk 'BEGIN{var=\\\"\\\"A 1\\\"\\\";print var}'" \
"$(awk 'BEGIN{var="'"$s"'";print var}')"

# 3. usando -v
printf '%-50s %-40s %s\n' \
"awk -v var=\"\$s\" 'BEGIN{print var}'" \
"awk -v var=\\\"\\\"A 1\\\"\\\" 'BEGIN{print var}'" \
"$(awk -v var="$s" 'BEGIN{print var}')"

