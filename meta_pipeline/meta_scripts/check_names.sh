#!/bin/bash

cd /sciclone/data10/chdorgeix/Christian/cat_leaf_files
touch /sciclone/home20/chdorgeix/batchscripts/set2_list.txt

for file in *; do
     if grep -Fxq "$file" /sciclone/home20/chdorgeix/batchscripts/set1_list.txt; then
        echo $file
     else
        echo $file >> /sciclone/home20/chdorgeix/batchscripts/set2_list.txt
        echo $file >> /sciclone/home20/chdorgeix/batchscripts/master_list.txt
     fi
done
