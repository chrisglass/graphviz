suff=graphviz

rm -f target/*.png

for i in $(ls *.$suff)
do 
  echo "Rendering $i"
  out="target/${i%.$suff}.png"

  dot -Tpng $i -o $out # ${i%.$suff}.png
  echo "Rendered $out"
done

