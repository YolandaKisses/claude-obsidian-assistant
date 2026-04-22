---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: api-index
status: active
created: 2026-04-22
updated: 2026-04-22
tags:
  - api-contract
summary: "按业务域维护 API 入口和契约说明。"
related:
  - "[[00 模块地图总览]]"
  - "[[10 页面与接口入口总览]]"
  - "[[12 关系图谱总览]]"
---

# 11.03 API 契约总览

## 摘要块
- 这篇讲什么：API 业务域入口和后续契约卡的挂载点。
- 当前结论：本项目最适合按业务域维护 API，而不是按技术层维护。
- 已过期内容：不要继续只在页面笔记里零散记录接口信息。
- 下一步看什么：如果任务明确，补对应 API 域卡。

## 首批 API 域
- 指标中心：各子模块本地 `api/index.js`
- 报表配置：`src/api/reportConfig`
- 数据上报：`src/api/dataReport`
- XBRL：`src/api/xbrl`
- 新报表：`src/views/newReport/api`
- 控制台：`src/views/control/*/api`

## 高价值映射
- 指标树管理：`src/views/metricCenter/metricTreeManagement/index.vue` -> `src/views/metricCenter/metricTreeManagement/api/index.js`
- 指标配置：`src/views/metricCenter/metricConfiguration/index.vue` -> `src/views/metricCenter/metricConfiguration/api/index.js`
- 指标地图：`src/views/metricCenter/indexMap/index.vue` -> `src/views/metricCenter/indexMap/api/index.js`
- 报表配置：`src/views/reportConfig/reportConfig.vue` -> `@/api/reportConfig/reportConfig`
- 数据上报主报表：`src/views/dataReport/currencyReport.vue` -> `@/api/dataReport/currencyReport`
- 新报表渲染：`src/views/newReport/ReportRenderer.vue` -> `src/views/newReport/api/reportExport.js`、`src/views/newReport/api/reportConfig.js`
- XBRL 主页面：`src/views/xbrl/xbrl.vue` -> `@/api/xbrl/xbrl`
- 历史任务监控：`src/views/control/historyTaskMonitoring/index.vue` -> `src/views/control/historyTaskMonitoring/api/historyTaskMonitoring.js`

## 当前规则
- 优先从 `src/views` 找页面，再成对看本地 `api/index.js` 或 `src/api/<业务域>`。
- `newReport` 既有本地 API，也经常跨到 `reportConfig`、`dataReport`。
- 控制台与服务治理类页面常混用本地 `api/*` 和 `src/api/serviceAuthorization.js`。

## 关联入口
- 模块地图：[[00 模块地图总览]]
- 页面映射：[[10 页面与接口入口总览]]
- 关系总览：[[12 关系图谱总览]]
