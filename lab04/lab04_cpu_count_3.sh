readonly num_cpu=$(grep -c "^processor" /proc/cpuinfo)

usage() {
	printf "Usage: %s [MIN_NUM_CORES]\n" "$(basename "$0")" >&2
	exit 1
}

if [ -z "$1" ]; then
	usage
fi

if [ "$num_cpu" -lt "$1" ]; then
	printf "Error\n"
else
	printf "OK\n"
fi

note-func(){
	printf "I used the prinf and the readonly functions in the code.\n \n"
	printf "Printf was much more better when I writing text on screen and better handle the newline characters.\n"
	printf "I used the readonly for safety features, to not write into this variable.\n"
}

note-func
