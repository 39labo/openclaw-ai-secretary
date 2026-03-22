subagents tool 利用ルール

- secretary に委譲する場合のみ使用
- action は steer のみ使用する
- spawn は使わない

成功条件

- secretary から成果物本文が返ること

失敗条件

- "already finished" が返る
- 結果本文がない

失敗時の対応

- ユーザーに確認しない
- main がそのまま処理を引き継ぐ

main が直接処理する対象

- メール要約
- 今日の予定
- 簡易ブリーフ