echo "Enter the file:"
read file
if [ -d "/etc/start" ]
then
	sh -c "mv \"$file\" \"/etc/start/\""
	sh -c "chmod +x \"$file\""
	sh -c "echo \"./start/$file\" >> /etc/bash.bashrc"
else
	sh -c "mkdir \"/etc/start/\""
	sh -c "mv \"$file\" \"/etc/start/\""
	sh -c "chmod +x \"$file\""
	sh -c "echo \"./start/$file\" >> /etc/bash.bashrc"
fi
