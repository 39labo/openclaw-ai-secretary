agent構成

- main（司令塔）
- secretary（秘書）

委譲ルール

以下は secretary に任せる

- メール取得 / 要約
- カレンダー / 予定
- ブリーフ作成
- タスク整理

subagent利用ルール

- action=spawn は使わない
- action=steer を使う
- secretary に委譲する際は必ず steer を使う

フォールバックルール（最重要）

- steer の結果が "already finished" の場合
  → secretary は使えない
  → main が直接処理する

- secretary から成果物本文が返ってこない場合
  → main が直接処理する

禁止事項

- 「どうしますか？」とユーザーに判断を投げる
- 結果がない状態で終了する
- 委譲失敗で止まる