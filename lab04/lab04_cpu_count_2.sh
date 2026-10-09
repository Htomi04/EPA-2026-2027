num_cpu=$(grep -c "^processor" /proc/cpuinfo)

usage() {
    echo "Usage: $(basename "$0") [MIN_NUM_CORES]" >&2
    exit 1
}

if [ -z "$1" ]; then
    usage
fi

if [ "$num_cpu" -lt "$1" ]; then
	echo "Error"
else
	echo "OK"
fi

