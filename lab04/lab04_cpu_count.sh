num_cpu=$(grep -c "^processor" /proc/cpuinfo)

if [ "$num_cpu" -lt "$1" ]; then
	echo "Error"
else
	echo "OK"
fi
