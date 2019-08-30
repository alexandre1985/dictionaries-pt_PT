#!/bin/bash

HPATH=/usr/share/hunspell

# create tempotaty directory
mkdir ./tmp

# extract tarball
tar xf *preao* -C ./tmp

# go inside tarball extracted hunspell directory
cd ./tmp/*/

# install portuguese preAO dictionaries into hunspell
sudo cp pt_PT-preao.aff ${HPATH}/
sudo cp pt_PT-preao.dic ${HPATH}/
cd ${HPATH}
sudo ln -s pt_PT-preao.aff pt_PT.aff
sudo ln -s pt_PT-preao.dic pt_PT.dic

# delete temporary directory
cd ../../
rm -Rf ./tmp/

exit 0
