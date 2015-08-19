#!/bin/bash

git checkout master
git fetch
git merge origin/atualizacaoconteudo
hugo
cd public
git checkout master
git add .
git commit --message "Atualização do site"
git push
cd ..
git add .
git commit --message "Atualização do site"
git push
