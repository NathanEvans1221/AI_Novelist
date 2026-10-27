# git同步備份branch

## 添加【自訂遠端】
```bash
# 語法：git remote add <自訂名稱> <專案的路徑或URL>
git remote add edwin45168899 git@github.com:edwin45168899/AI_Novelist.git
```
若使用 SSH host alias（例如 `git@github.com-chiisen:...`），請先確認 `~/.ssh/config`（Windows：`%USERPROFILE%\.ssh\config`）已設定對應的 Host 與 IdentityFile。

## 查看新增的【自訂遠端】
```bash
git remote
```

## 刪除【自訂遠端】
```bash
git remote remove edwin45168899
```

## 建立 GitHub 專案
專案名稱同本地專案名稱
README.md、.gitignore、LICENSE 都不要設定  
因為 commit 後可能會衝突  

## 推送到遠端的 GitHub
```bash 
git push edwin45168899 main

# 本地的分支
git push origin main

# 本地的分支並追蹤
git push -u origin main
```

## 一次同步多個分支
設定【自訂遠端】
```bash
# 注意 origin 的 push 會多一個 push
git remote set-url --add --push origin git@github.com:edwin45168899/AI_Novelist.git
# 預設沒設定 origin，可能還要設定一次
git remote set-url --add --push origin git@github.com-chiisen:chiisen/AI_Novelist.git

# 刪除 origin 的 push URL
git remote set-url --delete --push origin git@github.com:edwin45168899/AI_Novelist.git

# 設定自訂遠端（edwin45168899）的 fetch URL
git remote set-url edwin45168899 git@github.com:edwin45168899/AI_Novelist.git

# 查看 git remote set-url 設定
git remote -v
```
執行 `git push` 時，會依序推送到 origin 設定的多個 push URL（例如 `git@github.com:edwin45168899/AI_Novelist.git`）。
```bash
git push
```
