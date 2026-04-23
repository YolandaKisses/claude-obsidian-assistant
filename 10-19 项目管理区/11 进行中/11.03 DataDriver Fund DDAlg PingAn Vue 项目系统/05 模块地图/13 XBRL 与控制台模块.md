---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: module
status: active
created: 2026-04-22
updated: 2026-04-23
tags:
  - module
  - xbrl
  - control
summary: "XBRL 与控制台类页面入口。"
related:
  - "[[00 模块地图总览]]"
  - "[[00 API 契约总览]]"
  - "[[24 XBRL页面卡]]"
  - "[[24 XBRL页面-API映射卡]]"
  - "[[25 控制台页面卡]]"
  - "[[25 控制台页面-API映射卡]]"
---

# 11.03 XBRL 与控制台模块

## 摘要块
- 这篇讲什么：XBRL 与控制台 / 服务治理页面的主要入口。
- 当前结论：这两块页面多，但都适合通过“页面目录 + 本地 API / 业务域 API”方式定位。
- 已过期内容：不要只用“系统管理”这种过宽标签描述。
- 下一步看什么：如果改动频率提高，再拆成两张独立模块卡。
- 适用范围：XBRL 数据查询 / 导入 / 监控，控制台任务管理 / 服务治理。
- 不适用范围：指标中心、报表配置、新报表。

## 入口路径
- XBRL：`src/views/xbrl/*` -> `src/api/xbrl/*`
- 控制台 / 服务治理：`src/views/control/*` -> 本地 `api/*.js` 或 `src/api/serviceAuthorization.js`

## 关联页面
- [[24 XBRL页面卡]]
- [[25 控制台页面卡]]

## 关联 API
- [[24 XBRL页面-API映射卡]]
- [[25 控制台页面-API映射卡]]

## 职责边界
- 负责 XBRL 查询、导入、规则校验与控制台类任务管理、平台参数、服务授权。
- 不负责指标配置、报表配置和 `newReport` 渲染链路。

## 常见修改点
- 查询条件与导入校验
- 监控规则与校验逻辑
- 任务管理筛选与平台参数
- 服务授权状态和操作入口

## 典型问题
- 同一目录下本地 API 与全局 API 混用，容易误判真实调用源。
- XBRL 业务域多个页面复用接口，改字段时要确认影响范围。

## 最近更新
- 2026-04-23：补齐模块与页面 / API 卡的双向反查链路。

## XBRL 入口示例
- 页面目录：`src/views/xbrl/*`
- API 域：`src/api/xbrl/*`
- 高价值页面：`xbrl.vue`、`xbrlDataSearch.vue`、`xbrlImport.vue`、`reportMenu.vue`、`dataMonitor.vue`、`monitor/checkRule.vue`

## 控制台 / 服务治理入口示例
- 页面目录：`src/views/control/*`
- 常见 API：本地 `api/*.js` 或 `src/api/serviceAuthorization.js`
- 高价值页面：`todayTaskManage/index.vue`、`historyTaskMonitoring/index.vue`、`platformParameterSet/index.vue`、`dataModelManage/index.vue`

## 关联节点
- API 入口：[[00 API 契约总览]]
- 页面映射：[[10 页面与接口入口总览]]
- 页面卡：[[24 XBRL页面卡]]、[[25 控制台页面卡]]
- 页面 -> API 卡：[[24 XBRL页面-API映射卡]]、[[25 控制台页面-API映射卡]]
