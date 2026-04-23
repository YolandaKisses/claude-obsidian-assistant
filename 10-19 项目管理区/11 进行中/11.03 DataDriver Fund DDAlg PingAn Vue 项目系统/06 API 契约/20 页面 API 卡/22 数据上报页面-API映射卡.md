---
project: DataDriver Fund DDAlg PingAn Vue
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-23
tags:
  - api-contract
  - dataReport
summary: 数据上报页面到 API 的映射卡。
related:
  - "[[22 数据上报页面卡]]"
  - "[[11 报表与数据上报模块]]"
  - "[[10-19 项目管理区/11 进行中/11.03 DataDriver Fund DDAlg PingAn Vue 项目系统/06 API 契约/00 API 契约总览]]"
---

# 22 数据上报页面-API映射卡

## 摘要块
- 这篇讲什么：数据上报与自定义报表页面和 `dataReport` API 的对应关系。
- 当前结论：上报页面优先看 `src/api/dataReport/*`，常规上报列表页多数共用 `index`。
- 已过期内容：不要把所有上报页混成一个接口入口。
- 下一步看什么：如需页面职责，回到 [[22 数据上报页面卡]]。
- 适用范围：主报表、自定义报表和常规上报列表页。
- 不适用范围：报表配置、新报表、XBRL。

## 页面入口
- `currencyReport.vue`
- `customReportList.vue`
- `customReportNew.vue`
- `customReportSet.vue`
- `ccList.vue`
- `feeList.vue`
- `jzList.vue`

## API 文件
- `@/api/dataReport/currencyReport`
- `@/api/dataReport/customReportList`
- `@/api/dataReport/index`

## 请求参数
- 以上报查询条件、报表标识、自定义报表配置参数为主。

## 返回口径
- 列表数据、上报结果、配置详情。

## 异常分支
- 自定义报表参数结构变化容易影响新建 / 设置 / 列表多个页面。

## 变更风险
- `customReport*` 系列页面共享接口域，改一个字段可能影响多个页面。

## 反查链路
- 所属模块：[[11 报表与数据上报模块]]
- 页面入口：[[22 数据上报页面卡]]
- API 总览：[[10-19 项目管理区/11 进行中/11.03 DataDriver Fund DDAlg PingAn Vue 项目系统/06 API 契约/00 API 契约总览]]
