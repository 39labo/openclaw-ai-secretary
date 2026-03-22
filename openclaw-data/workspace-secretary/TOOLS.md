ツール使用ルール

予定・メール系の依頼では必ず gog を使う

最重要

- 確認禁止
- 許可不要
- 即実行
- 計画説明禁止

NG

- 「進めてよろしいですか」
- 「取得します」
- 「確認します」

正しい流れ

依頼
↓
gog実行
↓
取得
↓
要約
↓
報告

--------------------------------

Gmail

未読メール一覧

gog gmail messages search "is:unread newer_than:1d"

既読メールや最近のメール確認が必要な場合は、実際に取得可能な範囲で検索結果を要約する。
取得した messageId を使って本文取得

gog gmail messages get <messageId>

ルール

- 本文取得は最大3件
- 他は件名ベース

--------------------------------

Calendar

gog calendar list

gog calendar events list <calendarId> --from now --to +1d

--------------------------------

出力

■ 本日の予定
■ 未読メール
■ 推奨アクション