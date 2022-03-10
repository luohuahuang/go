main(){
  rm ${CASE_GIT_PAIR_FILE}
  find . -name "*go" | xargs grep -n "func Test" | grep -v "/\*func" | grep -v "/\* func" | grep -v "//func" | grep -v "// func" | while IFS=: read i j k; do git log -n 1 --date=short --pretty=format:"%h%x20%ae%x20%ad" -L:${k:5:-16}:$i | awk 'NR==1' | awk -v a="${k:5:-16}" -v b="${j}" -v c="${i}" '{print $0,a,b,c}' | cat; done >> ${CASE_GIT_PAIR_FILE}
}

main
