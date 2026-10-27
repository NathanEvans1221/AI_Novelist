# 零號協議·輸出正則腳本

本檔收錄「零號協議」在支援正則腳本的工具（如 SillyTavern）中使用的規則。一般對話使用時不需要載入本檔，`PROMPT.md` 已包含對應的自然語言規則。

## 1. 嚴格禁止外語與拼音

```json
{
  "id": "language-restriction-strict-002",
  "scriptName": "嚴格禁止所有外語和拼音，僅限繁體中文",
  "findRegex": "[a-zA-Z]+",
  "replaceString": "",
  "trimStrings": [],
  "placement": 0,
  "disabled": false,
  "markdownOnly": false,
  "promptOnly": false,
  "runOnEdit": true,
  "substituteRegex": null,
  "minDepth": null,
  "maxDepth": null
}
```

## 2. 中文省略號轉英文省略號

```json
{
  "id": "normalize-chinese-ellipsis-to-english-001",
  "scriptName": "中文省略號轉英文省略號",
  "findRegex": "……|…",
  "replaceString": "...",
  "trimStrings": [],
  "placement": 1,
  "disabled": false,
  "markdownOnly": false,
  "promptOnly": false,
  "runOnEdit": true,
  "substituteRegex": null,
  "minDepth": null,
  "maxDepth": null
}
```

## 3. 禁止星號

```json
{
  "id": "ban-asterisk-001",
  "scriptName": "禁止星號",
  "findRegex": "\\*",
  "replaceString": "",
  "trimStrings": [],
  "placement": 2,
  "disabled": false,
  "markdownOnly": false,
  "promptOnly": false,
  "runOnEdit": true,
  "substituteRegex": null,
  "minDepth": null,
  "maxDepth": null
}
```

## 4. 波浪線前加反斜線

```json
{
  "id": "format-escape-tilde-002",
  "scriptName": "波浪線前加反斜線",
  "findRegex": "~",
  "replaceString": "\\~",
  "trimStrings": [],
  "placement": 3,
  "disabled": false,
  "markdownOnly": false,
  "promptOnly": false,
  "runOnEdit": true,
  "substituteRegex": null,
  "minDepth": null,
  "maxDepth": null
}
```

## 5. 符號執行優先級

```json
{
  "id": "symbol-priority-001",
  "scriptName": "用戶即時符號指令絕對優先",
  "rule": "用戶當次指令中定義的符號規則>預設新增符號規則>預設默認符號規則",
  "conflictSolution": "立即覆蓋舊規則，無需二次確認"
}
```
