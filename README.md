# AGenIOS Web Remote

Control Antigravity™ from your phone.

> *Not affiliated with or endorsed by Google LLC. Antigravity™ is a trademark of Google LLC.*

---

## Requirements

Before installing, make sure you have:

- **Mac** (macOS 12 or later)
- **Antigravity 2.0** — the AI chat app
  > ⚠️ This is the **standalone chat app**, not the AG IDE
- **Node.js 18+** — [nodejs.org](https://nodejs.org)
- **PM2** — install once with: `npm install -g pm2`

---

## Install

Open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/tasheees/nb-remote-tools-8f4a2/main/install.sh | bash
```

The setup wizard will ask you two things:
1. **A password** for your Web Remote (you choose it)
2. **Telegram Bot Token** *(optional — lets you receive your link on your phone)*

Setup takes about 60 seconds.

---

## Telegram Bot Setup *(optional but recommended)*

The Telegram bot sends you your Web Remote link on every startup — no need to look at your Mac.

1. Open Telegram → search **@BotFather** → start chat
2. Send `/newbot` → follow the prompts → copy your **Bot Token**
3. Send any message to your new bot (so it knows who you are)
4. Open this URL in your browser:
   ```
   https://api.telegram.org/bot<YOUR_TOKEN>/getUpdates
   ```
5. Find `"chat": { "id": 123456789 }` — that number is your **Chat ID**
6. Enter both when the setup wizard asks

---

## Usage

| Command | What it does |
|:--------|:------------|
| `agenios start` | Launch Antigravity + start the bridge |
| `agenios stop` | Stop the bridge |
| `agenios restart` | Restart after a crash |
| `agenios logs` | View live logs |
| `agenios status` | Check if bridge is running |

**First run:**
```bash
agenios start
```

Your Web Remote link will appear in the terminal (and in Telegram if set up).  
Open it on your phone — it works in Safari and Chrome.

---

## How It Works

```
Your Mac (Antigravity running)
  └── AGenIOS bridge
        └── ngrok tunnel → HTTPS link
                              └── Your phone (Web Remote)
```

The bridge connects to Antigravity locally and creates a secure tunnel to your phone. Nothing is stored remotely.

---

## Troubleshooting

**"Antigravity not found"**
→ Install Antigravity 2.0 from [antigravity.ai](https://antigravity.ai)

**"PM2 not found"**
→ Run: `npm install -g pm2` then try again

**Web Remote shows "Connecting…" forever**
→ Run `agenios restart` — Antigravity may need to be relaunched

**Link expired / changed**
→ Run `agenios restart` to get a new link

---

## Beta Notes

This is an early beta. Known limitations:
- macOS only
- First `agenios start` will briefly close and relaunch Antigravity
- The Web Remote link changes on every restart (Telegram bot helps with this)
- Some AG features may not be fully mirrored yet

Found a bug? Reply in the beta thread.

---

*AGenIOS is an independent project. Not affiliated with, endorsed by, or in any way connected to Google LLC.*  
*Antigravity™ is a trademark of Google LLC.*
