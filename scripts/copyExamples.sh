#!/bin/bash
for file in $1/*.html
do
  fn=$(basename $file)
  sed 's%igv.org/web/release%igv.org/web/test%g' $file | sed 's/1.0.3/1.04/g' > $2/$fn
done

