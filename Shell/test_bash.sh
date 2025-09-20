type bash
echo $BASH_VERSION
a=2; b=2
[[ a -eq b ]]; echo "1 => $?"
[[ $a -eq $b ]]; echo "2 => $?"
unset a b
[[ a -eq b ]]; echo "3 => $?"
[[ $a -eq $b ]]; echo "4 => $?"

