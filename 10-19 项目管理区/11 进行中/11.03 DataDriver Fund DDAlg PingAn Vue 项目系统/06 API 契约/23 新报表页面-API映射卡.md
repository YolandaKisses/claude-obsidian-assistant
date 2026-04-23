---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-22
tags:
  - api-contract
  - newReport
summary: "新报表页面与本地 API 的映射卡。"
related:
  - "[[23 新报表页面卡]]"
  - "[[10 ReportRenderer 树表误判排查]]"
---

# 23 新报表页面-API映射卡

## 摘要块
- 这篇讲什么：新报表页面与本地 API、异常分支和风险点。
- 当前结论：`ReportRenderer` 同时依赖本地 API 和本地判定逻辑，接口与渲染耦合较强。
- 已过期内容：不要把异常都归因到页面本身，很多问题发生在数据判定层。
- 下一步看什么：排查数据格式问题时看 [[10 ReportRenderer 树表误判排查]]。
- 适用范围：`newReport` 页面与 `ReportRenderer`。
- 不适用范围：普通报表配置、数据上报、XBRL。

## 页面入口
- `src/views/newReport/ReportRenderer.vue`

## API 文件
- `src/views/newReport/api/reportExport.js`
- `src/views/newReport/api/reportConfig.js`

## 请求参数
- 以报表配置参数、导出参数和渲染初始化参数为主。

## 返回口径
- 多为 `dataList`、配置结构、导出相关结果。

## 异常分支
- 普通列表如果只有 `id`，旧逻辑会误判成树表。
- `treeConfig` 和自动识别逻辑混用时，容易出现渲染分支偏差。

## 变更风险
- 改接口字段口径时，要同时验证 `ReportRenderer` 的本地判断逻辑。
