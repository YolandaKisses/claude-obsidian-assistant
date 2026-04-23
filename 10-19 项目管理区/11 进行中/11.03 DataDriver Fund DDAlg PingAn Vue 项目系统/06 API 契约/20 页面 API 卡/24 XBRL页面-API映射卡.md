---
project: DataDriver Fund DDAlg PingAn Vue
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-23
tags:
  - api-contract
  - xbrl
summary: XBRL 页面到 API 的映射卡。
related:
  - "[[24 XBRL页面卡]]"
  - "[[13 XBRL 与控制台模块]]"
  - "[[10-19 项目管理区/11 进行中/11.03 DataDriver Fund DDAlg PingAn Vue 项目系统/06 API 契约/00 API 契约总览]]"
---

# 24 XBRL页面-API映射卡

## 摘要块
- 这篇讲什么：XBRL 页面与 `src/api/xbrl` 的映射关系。
- 当前结论：XBRL 页面集中度高，最适合按业务域接口统一维护。
- 已过期内容：不要按单页面零散记录接口。
- 下一步看什么：如需页面职责，回到 [[24 XBRL页面卡]]。
- 适用范围：XBRL 主页、查询、导入、监控、规则校验。
- 不适用范围：控制台、报表配置、新报表。

## 页面入口
- `xbrl.vue`
- `xbrlDataSearch.vue`
- `xbrlImport.vue`
- `reportMenu.vue`
- `dataMonitor.vue`
- `monitor/checkRule.vue`

## API 文件
- `@/api/xbrl/xbrl`
- `@/api/xbrl/xbrlDataSearch`
- `@/api/xbrl/xbrlImport`
- `@/api/xbrl/reportMenu`
- `@/api/xbrl/dataMonitor`
- `@/api/xbrl/checkRule.js`

## 请求参数
- 查询条件、导入参数、菜单配置参数、监控规则参数。

## 返回口径
- 列表、导入结果、菜单项、监控结果、规则校验结果。

## 异常分支
- 导入和规则校验类页面对错误提示完整性要求高。

## 变更风险
- 同一业务域多个页面复用接口，改字段可能影响查询、导入和监控多个链路。

## 反查链路
- 所属模块：[[13 XBRL 与控制台模块]]
- 页面入口：[[24 XBRL页面卡]]
- API 总览：[[10-19 项目管理区/11 进行中/11.03 DataDriver Fund DDAlg PingAn Vue 项目系统/06 API 契约/00 API 契约总览]]
