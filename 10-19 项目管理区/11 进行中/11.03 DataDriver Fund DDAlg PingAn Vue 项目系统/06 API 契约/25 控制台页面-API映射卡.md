---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-22
tags:
  - api-contract
  - control
summary: "控制台页面到 API 的映射卡。"
related:
  - "[[25 控制台页面卡]]"
---

# 25 控制台页面-API映射卡

## 摘要块
- 这篇讲什么：控制台与服务治理页面和 API 的映射关系。
- 当前结论：控制台类页面既有本地 API，也可能混用公共授权接口。
- 已过期内容：不要把控制台类页面统一看成一个接口来源。
- 下一步看什么：如需页面职责，回到 [[25 控制台页面卡]]。
- 适用范围：任务管理、历史监控、平台参数、数据模型管理、服务授权。
- 不适用范围：XBRL 页面、指标中心页面。

## 页面入口
- `todayTaskManage/index.vue`
- `historyTaskMonitoring/index.vue`
- `platformParameterSet/index.vue`
- `dataModelManage/index.vue`
- `serviceAuthorization/*`

## API 文件
- `src/views/control/todayTaskManage/api/todayTaskManage.js`
- `src/views/control/historyTaskMonitoring/api/historyTaskMonitoring.js`
- `src/views/control/platformParameterSet/api/platformParameterSet.js`
- `src/views/control/dataModelManage/api/dataOriginManage.js`
- `@/api/serviceAuthorization.js`

## 请求参数
- 查询参数、平台配置参数、授权参数、任务管理参数。

## 返回口径
- 列表、配置详情、授权状态、模型管理结果。

## 异常分支
- 本地 API 与全局 API 混用时，容易误判实际调用源。

## 变更风险
- 服务授权和控制台页面共享部分公共接口，改动要确认影响范围。
