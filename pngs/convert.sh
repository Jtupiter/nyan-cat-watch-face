#!/bin/bash
for file in ~/Documents/PebbleApps/pngs/*.gif; do
  gif="${file##*/}"
  gif_name="${gif%.*}";
  mkdir $gif_name
  convert $gif -coalesce -adaptive-resize '100x' ~/Documents/PebbleApps/pngs/$gif_name/${gif_name}_%02d.png;
  python ~/Doc
  ~/Downloads/apngasm_noprev/apngasm $gif_name.apng ${gif_name}_*.png -z0 7 100
done
