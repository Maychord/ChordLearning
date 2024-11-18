#!/bin/bash

# 定义时间戳
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# 进入项目目录
cd /Users/chunz/Documents/ChordLearning

# 添加所有文件到暂存区
git add .

# 检查是否有更改需要提交
if [[ $(git status --porcelain) ]]; then
    # 提交更改
    git commit -m "Auto commit: $TIMESTAMP"
    # 推送到远程仓库
    git push origin main
else
    echo "No changes detected at $TIMESTAMP"
fi
