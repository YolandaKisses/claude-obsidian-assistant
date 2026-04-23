---
project: "DataDriver Fund QTrade Vue"
project_id: "11.04"
type: page-api-card
status: active
created: 2026-04-23
updated: 2026-04-23
tags:
  - api-contract
  - quantitative
summary: "量化交易页面到 API 的映射。"
related:
  - "[[20 量化交易页面卡]]"
---

# 量化交易页面-API映射卡

## 摘要块
- 这篇讲什么：量化交易页面的 API 入口映射。
- 当前结论：具体接口口径待随任务补齐，当前只记录入口文件。
- 已过期内容：无。
- 下一步看什么：具体页面目录下 `api.ts`。

## 页面 API 入口
- 股票池：`src/views/quantitative/stockPool/api.ts`
- 缠论园：`src/views/quantitative/chanlunyuan/scripts/api.ts`
- 缠论：`src/views/quantitative/chanlun/api.ts`
- 模拟基金：`src/views/quantitative/simulationFund/api.ts`
- 回测：`src/views/quantitative/backtest/api.ts`
- 股票列表：`src/views/quantitative/stockList/api.ts`
- 实盘交易：`src/views/quantitative/firmBargain/api.ts`

## 待补
- 请求方法、参数、返回结构、异常分支、页面引用点。
