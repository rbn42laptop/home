#!/bin/bash


cd ~
rm ~/.git -rf
rm ~/home -rf

git clone https://github.com/rbn42/home.git
mv ~/home/.git ~/
git checkout \*


#load from github
#!/bin/bash
shopt -s dotglob
mv ~/home/* ~/
