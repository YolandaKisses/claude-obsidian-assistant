# 📡 obsidian-sync 自动同步脚本
## 用途
存放Claude Code会话自动同步到Obsidian的相关脚本，自动打通开发上下文和知识库的关联。

## 包含文件
- `obsidian-sync.md`：原有同步规则说明
- `auto-sync-hook.sh`：Git Hook增强版脚本，自动同步提交记录+会话ID到Obsidian

## 使用方法
1. 把`auto-sync-hook.sh`复制到项目的`.git/hooks/post-commit`即可自动生效
2. 每次提交代码自动追加本次提交对应的Claude Code会话ID、会话链接到Obsidian开发日志
