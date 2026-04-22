---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: delivery
status: completed
created: 2026-04-22
updated: 2026-04-22
tags:
  - delivery
  - newReport
summary: "修正 ReportRenderer 对普通列表的树表误判。"
related:
  - "[[10 ReportRenderer 树表误判排查]]"
  - "[[12 新报表模块]]"
  - "[[11 ReportRenderer 树表识别收紧决策]]"
  - "[[12 关系图谱总览]]"
---

# 2026-04-22 ReportRenderer 树表识别修正

## 改了什么
- 从 `ReportRenderer` 中抽离树表字段解析与判断逻辑到独立工具模块。
- 修正 `processTableData` 的树表识别条件，避免普通列表误走树形转换。
- 新增最小化验证脚本。

## 为什么改
- 普通列表含有业务主键 `id` 时，被误判为树表并触发“数据格式错误”。

## 影响范围
- `src/views/newReport/ReportRenderer.vue`
- `src/views/newReport/utils/treeTable.js`
- `tests/newReport/treeTable.spec.js`

## API / 数据流影响
- 不改接口地址、请求参数和返回结构。
- 只调整前端拿到 `dataList` 后的本地判定逻辑。

## 验证结果
- `node tests/newReport/treeTable.spec.js` 已通过关键判断验证。
- `eslint` 在当前环境报 `Cannot read property 'range' of null`，未能作为最终 lint 通过依据。

## 风险 / 后续动作
- 用真实 `hsbc-report` 数据再走一遍初始化链路。
- 补一组针对自定义 `treeConfig` 字段名的验证用例。

## 关联节点
- 所属模块：[[12 新报表模块]]
- 问题排查：[[10 ReportRenderer 树表误判排查]]
- 决策记录：[[11 ReportRenderer 树表识别收紧决策]]
- 关系总览：[[12 关系图谱总览]]
