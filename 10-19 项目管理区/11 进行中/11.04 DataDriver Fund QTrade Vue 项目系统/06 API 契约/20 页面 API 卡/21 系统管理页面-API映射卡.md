---
project: "DataDriver Fund QTrade Vue"
project_id: "11.04"
type: page-api-card
status: active
created: 2026-04-23
updated: 2026-04-23
tags:
  - api-contract
  - system
summary: "系统管理页面到 API 的映射。"
related:
  - "[[21 系统管理页面卡]]"
---

# 系统管理页面-API映射卡

## 摘要块
- 这篇讲什么：系统管理页面的 API 入口映射。
- 当前结论：多数页面在同目录存在 `api.ts`，部分列表配置在 `crud.tsx`。
- 已过期内容：无。
- 下一步看什么：具体页面目录下 `api.ts` 与 `crud.tsx`。

## 页面 API 入口
- 用户管理：`src/views/system/user/api.ts`
- 角色管理：`src/views/system/role/api.ts`
- 菜单管理：`src/views/system/menu/api.ts`
- 部门管理：`src/views/system/dept/api.ts`
- 字典管理：`src/views/system/dictionary/api.ts`
- 文件管理：`src/views/system/fileList/api.ts`
- 系统配置：`src/views/system/config/api.ts`
- 白名单：`src/views/system/whiteList/api.ts`
- 操作日志：`src/views/system/log/operationLog/api.ts`
- 登录日志：`src/views/system/log/loginLog/api.ts`

## 待补
- 请求方法、参数、返回结构、权限影响、列表字段来源。
