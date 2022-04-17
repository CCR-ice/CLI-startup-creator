echo "Enter the file:"
read file
if [ -d "/etc/start" ]
then
	sh -c "gcc -o \"/etc/start/$file\" \"$file\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
else
	sh -c "gcc -o \"/etc/start/$file\" \"$file\""
	sh -c "mkdir \"/etc/start/\""
	sleep 5
	sh -c "echo \"/etc/start/$file\" >> /etc/bash.bashrc"
	echo "Done."
fi
#finish
