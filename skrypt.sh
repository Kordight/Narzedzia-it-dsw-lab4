case $1 in
  --date|-d) date ;;
  --logs|-l) num=${2:-100}
             for i in $(seq 1 $num); do
               echo "log$i.txt created by skrypt.sh on $(date)" > log$i.txt
             done ;;
  --help|-h) echo "--date | -d      Print current date"
             echo "--logs | -l N    Generate N log files (default 100)"
             echo "--help | -h      Show help" ;;
esac
