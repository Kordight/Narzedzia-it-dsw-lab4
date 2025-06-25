elif [[ $1 == "--logs" ]]; then
  for i in {1..100}; do
    echo "log$i.txt created by skrypt.sh on $(date)" > log$i.txt
  done
fi