#!/bin/bash

#其实openssl加密后上传github并不安全,因为过往的加密都被github保留了,甚至即使删除github的项目,流散到网络上的东西依然有可能被某处的爬虫留下cache.所以如果未来openssl出现问题,那么即使我们更新了openssl,别人依然可以通过过往的加密信息进行解密.
#不过对称加密出现漏洞的概率应该会比较小吧.

export KEYFILE="$HOME/.github_sync_aes_key"
export TOUCH_FOLDER="""
import sys,os.path
p=os.path.split(sys.argv[1])[0]
if not os.path.exists(p):
    os.makedirs(p)
"""
python -c "$TOUCH_FOLDER" "$1"
python -c "$TOUCH_FOLDER" "$2"

#Generate key
#openssl enc -aes-256-cbc -k secret -P -md sha1  | grep key > $KEYFILE

#salt加密的问题是,即使没有更新文件,每次自动gitsync的时候依然会改变文件带来流量.
#openssl enc -aes-256-cbc -salt -in "$1" -out "$2" -kfile $KEYFILE
#所以我们用nosalt
openssl enc -aes-256-cbc -nosalt -in "$1" -out "$2" -kfile $KEYFILE

#加密反转,uncomment下面的命令后执行  ~/bin/gitencrypt.sh
#openssl enc -aes-256-cbc -d -in "$2" -out "$1" -kfile $KEYFILE
