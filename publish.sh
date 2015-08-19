#!/bin/bash

git checkout master
git fetch
git merge origin/atualizacaoconteudo
cd public
git checkout master
cd ..
hugo
cd public
git add .
git commit --message "Atualização do site"
git push
cd ..
git add .
git commit --message "Atualização do site"
git push

git checkout travenup.com.br
git merge master
cd public
git checkout gh-pages
cd ..
hugo
cd public
git add .
git commit --message "Atualização do site"
git push
cd ..
git add .
git commit --message "Atualização do site"
git push


