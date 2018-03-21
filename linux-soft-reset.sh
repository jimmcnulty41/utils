kill $(ps -A | grep $1 | awk '{print $1}' | grep -v PID)
