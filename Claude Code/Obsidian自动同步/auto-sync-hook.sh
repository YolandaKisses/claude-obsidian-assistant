#!/bin/bash
# 增强版Git Hook脚本：自动同步提交信息+Claude会话ID到Obsidian
# 使用方法：复制到项目的.git/hooks/post-commit，加执行权限即可

# 配置项（每个项目修改这里就行）
OBSIDIAN_PROJECT_FILE="/Users/yolanda/Documents/obsidian知识库/my-wiki-archive/10-19 Projects/11 Active/[对应项目文档].md"
PROJECT_NAME="[项目名]"

# 自动获取信息
TODAY=$(date +"%Y年%m月%d日")
COMMIT_HASH=$(git rev-parse --short HEAD)
COMMIT_MSG=$(git log -1 --pretty=%B)
COMMIT_TIME=$(date +"%H:%M")
SESSION_ID=$(echo $CLAUDE_SESSION_ID)
SESSION_LINK="claude://session/$SESSION_ID"

# 检查Obsidian文件是否存在
if [ ! -f "$OBSIDIAN_PROJECT_FILE" ]; then
    echo "⚠️  Obsidian项目文件不存在，跳过同步"
    exit 0
fi

# 追加内容到开发日志
cat >> "$OBSIDIAN_PROJECT_FILE" << EOF

### $COMMIT_TIME Git Commit - $COMMIT_HASH
> 会话链接：[$SESSION_LINK]($SESSION_LINK)
```
$COMMIT_MSG
```
EOF

echo "✅ 已同步提交记录到Obsidian项目文档"
