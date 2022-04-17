echo "Enter the file:"
read file
if [ -d "/etc/start" ]
then
	sh -c "cp \"$file\" \"/etc/start/$file\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
else
	sh -c "mkdir \"/etc/start/\""
	sh -c "cp \"$file\" \"/etc/start/$file\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
fi
#finish
