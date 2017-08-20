variable=$1


case "$variable" in
  abc) echo "\$variable = abc" ;;
  xyz) echo "\$variable = xyz" ;;
esac > case_output.txt
