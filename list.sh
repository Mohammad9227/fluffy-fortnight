# shellcheck disable=SC1073
# shellcheck disable=SC2188
for i in $(cat dfdf.txt); do echo -n "$i",; done >> out.txt
sed -i 's/,$//' out.txt
