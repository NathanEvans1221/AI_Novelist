# 更新日誌

本專案遵循 [Keep a Changelog](https://keepachangelog.com/zh-TW/1.1.0/) 格式，版本號採用 [語意化版本](https://semver.org/lang/zh-TW/)。

## [Unreleased]

### 變更
- 將 `AI_GITHUB_PROJECT_GUIDE.md` 移至 `docs/ops/`，並在 README 新增「開發／維運」索引。
- 將 `docs/PROMPT.md` 開頭的 SillyTavern 正則 JSON 拆出至 `docs/PROMPT_REGEX.md`，主提示詞改為純規則描述。
- `setup_git_sync.ps1` 改為冪等執行，重複運行不會重複加入 push URL；加入錯誤即停與 Git 環境檢查。

### 修正
- 修正 `README.md` 的三種創作模式說明、正則腳本位置與清單格式。
- 修正 `docs/使用方法.md` 開場白的引號嵌套錯誤。
- 修正 `docs/使用方法.md` 的 `PROMPT.md` 連結格式。
- 修正 `docs/PROMPT.md` 對不存在的 `ooc:執行字數檢查與調整的規則` 的引用。
- 統一 `docs/PROMPT.md` 的用字：「沖突／沖擊」改為「衝突／衝擊」。
- 修正 `docs/git同步備份branch.md` 語意不完整的句子，釐清 push URL 刪除與 fetch URL 設定的差異，並移除寫死的本機 SSH 路徑。
- 移除使用說明中會隨章節變動而失效的 `PROMPT.md` 行號引用，改以章節名稱定位。
- `setup_git_sync.ps1` 設定 UTF-8 輸出，避免在 Git Bash 顯示中文亂碼。

### 新增
- 建立 `CHANGELOG.md`。
- 新增專案專用的 `.gitignore` 與 `.gitattributes`。

### 移除
- 移除其他專案殘留的 `.python-version` 與 `.gitignore`。
