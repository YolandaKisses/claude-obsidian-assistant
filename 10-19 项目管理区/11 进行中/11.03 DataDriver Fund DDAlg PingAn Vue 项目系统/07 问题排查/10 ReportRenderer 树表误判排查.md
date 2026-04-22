---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: bug
status: confirmed
created: 2026-04-22
updated: 2026-04-22
tags:
  - bug
  - newReport
  - ReportRenderer
summary: "ReportRenderer 把普通列表误判为树表，导致初始化报错。"
related:
  - "[[12 新报表模块]]"
  - "[[11 ReportRenderer 树表识别收紧决策]]"
  - "[[11 ReportRenderer 树表识别修正]]"
  - "[[12 关系图谱总览]]"
---

# 2026-04-22 ReportRenderer 树表误判排查

## 现象
- `hsbc-report` 初始化时出现“数据格式错误”。
- 普通列表数据被当成树形表格处理。

## 根因
- `ReportRenderer` 在 `processTableData` 中会根据返回数据字段自动识别树表。
- 旧逻辑为“任意一行存在 `id` 或 `pid` 任一字段就进入树表分支”。
- 这会把仅包含普通业务主键 `id` 的平铺列表误判为树表。
- `common.converTreeData` 要求数据里存在可识别根节点，因此误判后会直接报错。

## 修复结论
- 树表自动识别应收紧为“同时存在树节点 id 字段和父节点 pid 字段时，才进入树表分支”。

## 验证
- `node tests/newReport/treeTable.spec.js`
- 已覆盖“仅有 id 不应视为树表”和“同时有 id/pid 应视为树表”两类场景。

## 相关文件
- `src/views/newReport/ReportRenderer.vue`
- `src/views/newReport/utils/treeTable.js`
- `tests/newReport/treeTable.spec.js`

## 关联节点
- 所属模块：[[12 新报表模块]]
- 决策记录：[[11 ReportRenderer 树表识别收紧决策]]
- 对应交付：[[11 ReportRenderer 树表识别修正]]
- 关系总览：[[12 关系图谱总览]]
