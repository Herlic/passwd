# passwd

wget -N https://raw.githubusercontent.com/Herlic/passwd/master/passwd.sh && chmod +x passwd.sh

执行命令

./passwd.sh oldpassword newpassword

说明：

1、该脚本执行需要满足两个前提：一是批量修改的服务器root密码均一样；二是执行命令的linux服务器安装了expect命令。

2、执行命令时，需要传入两个参数，第一个是原密码；第二个是修改后的新密码。

3、serverip.txt 与 passwd.sh 脚本在同一路径下，且文档中，每行只能有一个服务器ip地址。
