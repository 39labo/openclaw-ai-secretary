# OpenClaw AI Secretary System

Discord / Slack 上で動作する、Gmail・カレンダー連携付きのAI秘書システムです。  
OpenClaw + gogcli を使用し、複数エージェント（main / secretary）で構成されています。

---

## 🚀 機能

- Gmail 未読・既読メール取得＆要約
- Google Calendar 予定取得
- AI秘書ブリーフ生成
- main → secretary の自動委譲
- Discord / Slack 連携

---

## 🧱 構成

main        : 司令塔（依頼整理・委譲）  
secretary   : 秘書（メール・予定・ブリーフ）

---

## 📁 ディレクトリ構成

openclaw-data/
  ├ agents/
  ├ workspace-main/
  ├ workspace-secretary/
  ├ openclaw.json
  ├ client_secret.json
  ├ gog-token.json

openclaw-vps/
  ├ docker-compose.yml
  ├ Dockerfile

---

## ⚙️ セットアップ

### 1. リポジトリ取得

git clone https://github.com/YOUR_NAME/openclaw-ai-secretary.git  
cd openclaw-ai-secretary/openclaw-vps

---

### 2. 環境変数設定

cp .env.example .env

編集:

PASSWORD=your-password

---

### 3. 起動

docker compose up -d --build

---

## 🔑 認証設定

### Google（gog）

docker exec -it openclaw bash

export GOG_KEYRING_PASSWORD=your-password  
gog auth login --manual

---

## 💬 使い方

今日の未読メールをまとめて  
今日の予定を教えて

---

## ⚠️ 注意

以下は Git 管理しない

- auth-profiles.json
- client_secret.json
- gog-token.json
- config/gogcli

---

## 👤 Author

Ryu Sakuma
