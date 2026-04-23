---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-23
tags:
  - api-contract
  - metricCenter
summary: "指标中心页面到 API 的映射卡。"
related:
  - "[[20 指标中心页面卡]]"
  - "[[10 指标中心模块]]"
  - "[[00 API 契约总览]]"
---

# 20 指标中心页面-API映射卡

## 摘要块
- 这篇讲什么：指标中心高频页面与本地 API 的对应关系。
- 当前结论：指标中心多数页面都优先查本地 `api/index.js`。
- 已过期内容：不要只凭关键词全局搜 API。
- 下一步看什么：如需具体页面职责，回到 [[20 指标中心页面卡]]。
- 适用范围：指标中心子模块页面。
- 不适用范围：报表配置、数据上报、新报表、XBRL、控制台。

## 页面入口
- `metricTreeManagement/index.vue`
- `metricTreeManagementNew/index.vue`
- `metricConfiguration/index.vue`
- `indexMap/index.vue`
- `apiManager/index.vue`
- `algManager/index.vue`
- `algCache/index.vue`
- `algQuery/index.vue`
- `dataModel/index.vue`
- `idxDashboard/index.vue`

## API 文件
- 各页面目录下本地 `api/index.js`

## 请求参数
- 以页面本地查询条件、树节点参数、算法/模型列表筛选条件为主。

## 返回口径
- 多为列表数据、树结构数据或配置项详情。

## 异常分支
- 树结构接口返回异常时，页面容易出现空树或展开异常。
- 不同历史版本页面可能对同一接口字段要求不一致。

## 变更风险
- 改本地 `api/index.js` 容易波及整个子模块页面。

## 反查链路
- 所属模块：[[10 指标中心模块]]
- 页面入口：[[20 指标中心页面卡]]
- API 总览：[[00 API 契约总览]]
