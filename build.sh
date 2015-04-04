#!/bin/bash

PROJECT=wssspe
mkdir -p artifact
cp $PROJECT.markdown artifact
pushd artifact
pandoc --template=../fullpage.tex $PROJECT.markdown -o $PROJECT.pdf
pandoc $PROJECT.markdown -o $PROJECT.docx
pandoc $PROJECT.markdown -o $PROJECT.odt
pandoc $PROJECT.markdown -o $PROJECT.html
popd

