RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
YELLOW='\033[0;33m'

printf "${GREEN}Installing webilio commands locally...${NC}"

sleep 5
if [ ! -d ~/webilio-bin ]; then
  mkdir ~/webilio-bin
fi

signature=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

printf "${YELLOW}Starting download${NC}"
curl -L https://github.com/webilio-xyz/webilio-commands/archive/refs/heads/main.zip -o /tmp/$signature.zip >> /dev/null

printf "${YELLOW}Decompressing${NC}"
mkdir /tmp/$signature
unzip /tmp/$signature.zip -d /tmp/$signature
rm -r ~/webilio-bin
mv /tmp/$signature/webilio-commands-main/bin ~/webilio-bin

printf "${YELLOW}Cleanup${NC}"
if [ -f ~/webilio-bin/install.sh ]; then
  rm ~/webilio-bin/install.sh
fi
rm -r /tmp/$signature
rm /tmp/$signature.zip

printf "${GREEN}Installation finished. Goodbye${NC}"
sleep 5
exit 1;
