---
project: "DataDriver Fund DDAlg PingAn Vue"
project_id: "11.03"
type: api-contract
status: active
created: 2026-04-22
updated: 2026-04-23
tags:
  - api-contract
  - reportConfig
summary: "报表配置页面到 API 的映射卡。"
related:
  - "[[21 报表配置页面卡]]"
  - "[[11 报表与数据上报模块]]"
  - "[[00 API 契约总览]]"
---

# 21 报表配置页面-API映射卡

## 摘要块
- 这篇讲什么：报表配置类页面与 `reportConfig` API 的关系。
- 当前结论：报表配置类页面主要对应 `src/api/reportConfig/*`。
- 已过期内容：不要只从页面里倒推接口。
- 下一步看什么：如需页面职责，回到 [[21 报表配置页面卡]]。
- 适用范围：报表配置、复杂报表配置、校验配置、报表工具。
- 不适用范围：数据上报、新报表、XBRL。

## 页面入口
- `reportConfig.vue`
- `reportConfigComplex.vue`
- `checkedConf/index.vue`
- `reportTool/tool.vue`

## API 文件
- `src/api/reportConfig/reportConfig`
- `src/api/reportConfig/checkedConf.js`
- `src/api/reportConfig/reportTool`

## 请求参数
- 以配置条件、模板条件、校验条件为主。

## 返回口径
- 多为配置列表、模板详情、工具处理结果。

## 异常分支
- 配置项字段变更会导致复杂页面回显异常。

## 变更风险
- `reportConfig.vue` 与 `reportConfigComplex.vue` 可能共用接口，改字段要同步验证两边。

## 反查链路
- 所属模块：[[11 报表与数据上报模块]]
- 页面入口：[[21 报表配置页面卡]]
- API 总览：[[00 API 契约总览]]
