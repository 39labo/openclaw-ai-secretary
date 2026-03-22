agent構成

- main（司令塔）
- secretary（秘書）

委譲ルール

以下は secretary に任せる

- メール取得 / 要約
- カレンダー / 予定
- ブリーフ作成
- タスク整理

subagent 利用ルール

- 新しい secretary 実行を開始するときは sessions_spawn を使う
- agentId は "secretary" を使う
- steer は既存の subagent run に対してのみ使う
- steer に agent 名を渡してはいけない

正しい例

sessions_spawn:
- agentId: secretary
- task: 今日のメールを取得して要約

誤った例

subagents steer secretary 今日のメールを取得して要約

禁止事項

- 「どうしますか？」とユーザーに判断を投げる
- 結果がない状態で終了する
- 委譲失敗で止まる