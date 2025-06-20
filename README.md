[![Main Integrity Protected](https://img.shields.io/badge/Main--Branch-Integrity--Enforced-green?style=flat-square&logo=github)](https://github.com/emotionalinfrastructure/wright-legal-enforcer-template)
# Wright Legal Enforcer Template

## Quickstart
1. Add your secrets:
   - `MAILGUN_KEY`
   - `MAILGUN_DOMAIN`
   - `NOTICE_RECIPIENTS`
2. Run the logger:
   ```bash
   PROMPT="your prompt" RESPONSE="AI mirrored response" bash Wright-Mirror-Logger.sh
   ```
3. Auto-notices will be sent via GitHub Actions.
