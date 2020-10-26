if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Setting up your Mac..."

	sh ./mac.sh
elif [[ "$OSTYPE" == "win32" ]]; then
  echo "Windows"
else
  echo "Unknown"
fi
