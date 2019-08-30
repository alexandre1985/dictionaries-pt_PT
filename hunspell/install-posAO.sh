#!/bin/bash

HPATH=/usr/share/hunspell

# create tempotaty directory
mkdir ./tmp

# extract tarball
tar xf $(ls -I '*preao*' | grep .tar.gz) -C ./tmp

# go inside tarball extracted hunspell directory
cd ./tmp/*/

# install portuguese preAO dictionaries into hunspell
sudo cp pt_PT-preao.aff ${HPATH}/
sudo cp pt_PT-preao.dic ${HPATH}/

# delete temporary directory
cd ../../
rm -Rf ./tmp/

exit 0
