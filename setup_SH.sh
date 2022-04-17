echo "Enter the file:"
read file
if [ -d "/etc/start" ]
then
	sh -c "chmod +x \"$file\""
	sh -c "cp \"$file\" \"/etc/start/\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
else
	sh -c "chmod +x \"$file\""
	sh -c "mkdir \"/etc/start/\""
	sh -c "mv \"$file\" \"/etc/start/\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
fi
#finish
