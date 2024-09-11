echo "alias wa='webilioAlias'" >> ~/.bashrc;
echo "" >> ~/.bashrc;
echo "webilioAlias() {" >> ~/.bashrc;
echo '  scriptName=$1' >> ~/.bashrc;
echo '  shift' >> ~/.bashrc;
echo '  sh -c "$(curl -fsSL https://raw.githubusercontent.com/vblais-webilio/webilio-commands/main/$scriptName.sh) $@"' >> ~/.bashrc;
echo '}'