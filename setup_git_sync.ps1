# setup_git_sync.ps1
# 依據 docs/git同步備份branch.md 建立的同步腳本
# 可重複執行：已存在的 push URL 不會被重複加入。

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$BackupUrl = "git@github.com:edwin45168899/AI_Novelist.git"
$MainUrl = "git@github.com-chiisen:chiisen/AI_Novelist.git"
$MainUrl1 = "git@github.com-edwiin1688:edwiin1688/AI_Novelist.git"
$MainUrl2 = "git@github.com-NathanEvans1221:NathanEvans1221/AI_Novelist.git"

function Add-PushUrl {
    param([Parameter(Mandatory)][string]$Url)

    $existing = @(git config --get-all remote.origin.pushurl)
    if ($LASTEXITCODE -ne 0 -and $LASTEXITCODE -ne 1) {
        throw "讀取 origin push URL 失敗（exit $LASTEXITCODE）"
    }

    if ($existing -contains $Url) {
        Write-Output "略過（已存在）: $Url"
        return
    }

    git remote set-url --add --push origin $Url
    if ($LASTEXITCODE -ne 0) {
        throw "加入 push URL 失敗: $Url（exit $LASTEXITCODE）"
    }
    Write-Output "已加入: $Url"
}

git rev-parse --is-inside-work-tree *> $null
if ($LASTEXITCODE -ne 0) {
    throw "目前目錄不是 Git 儲存庫，請先切換到專案根目錄。"
}

git remote get-url origin *> $null
if ($LASTEXITCODE -ne 0) {
    throw "找不到 origin remote，請先執行 git remote add origin <URL>。"
}

Write-Output "正在設定 Git 遠端同步..."
Write-Output "備份遠端: $BackupUrl"
Write-Output "主要遠端: $MainUrl"
Write-Output "主要遠端1: $MainUrl1"
Write-Output "主要遠端2: $MainUrl2"

foreach ($url in @($BackupUrl, $MainUrl, $MainUrl1, $MainUrl2)) {
    Add-PushUrl $url
}

Write-Output "設定完成。目前的 remote 設定如下："
git remote -v
