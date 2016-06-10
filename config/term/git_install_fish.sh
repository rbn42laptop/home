mkdir ~/git
cd ~/git
git clone https://github.com/fish-shell/fish-shell.git
cd ~/git/fish-shell
autoconf
./configure
make
sudo make install

'''
不需要安装omf,可以通过
fish_config调整配置
不过没有满意的prompt,还要自己调整
'''

curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
omf install shellder

'''
安装完成后,会修改
~/.config/fish/config.fish 文件,所以这个文件不能备份了.
添加
source ~/.config/fish/myconfig.fish
到该文件
'''




'''
避免fish检测home目录的git信息
添加以下代码到 
~/.config/fish/functions/fish_prompt.fish
line 139  function prompt_git
第一个if判断之后,否则在非git目录执行git命令会出现fatal

  set GIT_ROOT (git rev-parse --show-toplevel)
  if [ "$HOME" = "$GIT_ROOT" ] 
    return
  end
'''
