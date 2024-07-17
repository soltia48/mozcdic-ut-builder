#!/bin/bash

# Set environment variables for make.sh
export alt_cannadic=$INCLUDE_ALT_CANNADIC
export edict=$INCLUDE_EDICT2
export jawiki=$INCLUDE_JAWIKI
export neologd=$INCLUDE_NEOLOGD
export personal_names=$INCLUDE_PERSONAL_NAMES
export place_names=$INCLUDE_PLACE_NAMES
export skk_jisyo=$INCLUDE_SKK_JISYO
export sudachidict=$INCLUDE_SUDACHIDICT

cd ./merge-ut-dictionaries/src/ && bash ./make.sh
