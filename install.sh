if [ ! -f ~/.wa_aliases ]; then
  touch ~/.wa_aliases
  echo "if [ -f ~/.wa_aliases ]; then
      . ~/.wa_aliases
  fi" >> ~/.bashrc

  curl -fsSL https://raw.githubusercontent.com/webilio-xyz/webilio-commands/main/wa_aliases >> ~/.wa_aliases
fi