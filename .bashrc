if grep -q fish /etc/shells; then
  exec fish
fi
