@echo off
chcp 65001
color 3

echo 开始提交代码到本地仓库
echo 当前目录是：%cd%

echo 获取最新文档
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git pull origin main
echo 文档已更新！
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo 开始添加变更
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git add -A .
echo 执行结束！
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo 提交变更到本地仓库
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set /p declation=输入修改:
git commit -m "%declation%"
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo 将变更情况提交到远程git服务器
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git push origin master
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo 批处理执行完毕！
echo;