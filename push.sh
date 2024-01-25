#!/bin/bash

# 获取当前时间的年月日时分（UTC+8）
timestamp=$(TZ="Asia/Shanghai" date '+%Y年%m月%d日%H时%M分')

# 添加所有变更
git add .

# 提交并使用当前时间作为 commit 消息
git commit -am "$timestamp-update"

# 推送到远程仓库
git push
