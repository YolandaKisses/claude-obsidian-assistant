---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: decision
status: confirmed
created: 2026-04-22
updated: 2026-04-22
tags:
  - decision
  - newReport
summary: "ReportRenderer 树表自动识别需收紧条件。"
---

# 11 ReportRenderer 树表识别收紧决策

## 背景
- `ReportRenderer` 在 `hsbc-report` 初始化中把普通列表误判为树表，触发“数据格式错误”。

## 决策
- 树表自动识别必须同时具备树节点 id 字段和父节点 pid 字段，才进入树表分支。

## 为什么不用旧规则
- 旧规则只要看到 `id` 或 `pid` 就进入树表，误判普通业务主键概率高。
- `common.converTreeData` 依赖根节点结构，误判后直接报错。

## 影响
- 不修改接口请求和返回结构。
- 仅调整前端本地判定逻辑。
