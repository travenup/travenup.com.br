#!/bin/bash

git checkout master
git pull
git merge origin/atualizacaoconteudo
cd public
git checkout master
cd ..
hugo
cd public
git add .
git commit --message "Atualização do site"
git push -f
cd ..
git add .
git commit --message "Atualização do site"
git push

git checkout atualizacaoconteudo
git merge master
git push


git checkout travenup.com.br
git pull
git merge master
cd public
git checkout gh-pages
cd ..
hugo
cd public
git add .
git commit --message "Atualização do site"
git push -f
cd ..
git add .
git commit --message "Atualização do site"
git push -f

git checkout master