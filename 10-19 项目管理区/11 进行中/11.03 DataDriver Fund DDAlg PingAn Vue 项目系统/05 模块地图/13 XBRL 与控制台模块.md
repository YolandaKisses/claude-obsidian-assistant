---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: module
status: active
created: 2026-04-22
updated: 2026-04-22
tags:
  - module
  - xbrl
  - control
summary: "XBRL 与控制台类页面入口。"
related:
  - "[[00 模块地图总览]]"
  - "[[00 API 契约总览]]"
---

# 11.03 XBRL 与控制台模块

## 摘要块
- 这篇讲什么：XBRL 与控制台 / 服务治理页面的主要入口。
- 当前结论：这两块页面多，但都适合通过“页面目录 + 本地 API / 业务域 API”方式定位。
- 已过期内容：不要只用“系统管理”这种过宽标签描述。
- 下一步看什么：如果改动频率提高，再拆成两张独立模块卡。

## XBRL
- 页面目录：`src/views/xbrl/*`
- API 域：`src/api/xbrl/*`
- 高价值页面：`xbrl.vue`、`xbrlDataSearch.vue`、`xbrlImport.vue`、`reportMenu.vue`、`dataMonitor.vue`、`monitor/checkRule.vue`

## 控制台 / 服务治理
- 页面目录：`src/views/control/*`
- 常见 API：本地 `api/*.js` 或 `src/api/serviceAuthorization.js`
- 高价值页面：`todayTaskManage/index.vue`、`historyTaskMonitoring/index.vue`、`platformParameterSet/index.vue`、`dataModelManage/index.vue`

## 关联节点
- API 入口：[[00 API 契约总览]]
- 页面映射：[[10 页面与接口入口总览]]
