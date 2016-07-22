export ROOT=~/del/ycm_build
mkdir $ROOT -p
cd $ROOT

#config
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
#compile
cmake --build . --target ycm_core #--config Release
#javascript
cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime
npm install --production
#js可用命令 RefactorRename 不可用
