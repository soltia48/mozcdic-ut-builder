#!/bin/bash

cd ./merge-ut-dictionaries/src/

sed -i 's/^alt_cannadic=/# &/g' ./make.sh
sed -i 's/^edict=/# &/g' ./make.sh
sed -i 's/^jawiki=/# &/g' ./make.sh
sed -i 's/^neologd=/# &/g' ./make.sh
sed -i 's/^personal_names=/# &/g' ./make.sh
sed -i 's/^place_names=/# &/g' ./make.sh
sed -i 's/^skk_jisyo=/# &/g' ./make.sh
sed -i 's/^sudachidict=/# &/g' ./make.sh
