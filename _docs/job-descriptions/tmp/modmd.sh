#!/bin/zsh

# for file in ./*.md; do
for file in ./*/*.md; do
  echo "Processing $file"
  awk 'BEGIN {
  }
  {
    if (NR == 1) {
      line1 = $0
      getline line2
      getline line3
      if (line1 != "---" || line2 != "---") {
        print line1
        print line2
        if (line3 != "") print line3
      }
    } else {
      print $0
    }
  }' $file > $file.new
  mv $file.new $file
done


