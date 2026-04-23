---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: page
status: active
created: 2026-04-22
updated: 2026-04-22
tags:
  - page
  - xbrl
summary: "XBRL 相关页面入口与职责卡。"
related:
  - "[[13 XBRL 与控制台模块]]"
  - "[[24 XBRL页面-API映射卡]]"
---

# 24 XBRL页面卡

## 摘要块
- 这篇讲什么：XBRL 页面入口、职责与修改提示。
- 当前结论：XBRL 页面适合与 `src/api/xbrl` 一起读。
- 已过期内容：不要只用模块名代替具体页面入口。
- 下一步看什么：改接口时继续读 [[24 XBRL页面-API映射卡]]。
- 适用范围：XBRL 主页、数据查询、导入、菜单管理、监控、规则校验。
- 不适用范围：控制台任务管理页、新报表页。

## 页面中文名
- XBRL

## 页面路径
- `src/views/xbrl/xbrl.vue`
- `src/views/xbrl/xbrlDataSearch.vue`
- `src/views/xbrl/xbrlImport.vue`
- `src/views/xbrl/reportMenu.vue`
- `src/views/xbrl/dataMonitor.vue`
- `src/views/xbrl/monitor/checkRule.vue`

## 页面职责
- 承接 XBRL 数据查询、导入、菜单管理、监控与规则校验。

## 关联 API
- `src/api/xbrl/*`
- 详见 [[24 XBRL页面-API映射卡]]

## 常见修改点
- 查询条件
- 导入校验
- 菜单管理字段
- 监控与规则校验逻辑

## 常见坑
- XBRL 页面看上去独立，但共享同一业务域 API，修改时要注意公共接口影响面。
