# Deploy your app permanently (about 15 minutes)

In the session your app got a `gradio.live` link that lasts about 72 hours. This guide gives it a permanent home:
**GitHub** (your code, for your CV) and **Hugging Face Spaces** (the running app, free).

You need the zip from the last stage of your project notebook, for example `digit-recogniser.zip`, unzipped. It holds:

| File | What it is |
|---|---|
| `app.py` | the whole app: data, model, `predict`, the Gradio interface |
| `requirements.txt` | the libraries the app needs |
| `README.md` | the project page. The block between the `---` lines at the top tells Hugging Face how to run it |

## Step 1. GitHub (your portfolio)
1. Sign in at github.com → **New repository** → name it e.g. `digit-recogniser` → Public → tick *Add a README* **off** → Create.
2. **Add file → Upload files** → drag the three files in → **Commit changes**.
3. Open `README.md` on GitHub and replace `Your Name` if you have not already. Add your Spaces link (step 2) at the top.

The top block of the README shows as a small table on GitHub. That is expected.

## Step 2. Hugging Face Spaces (the live app)
1. Create a free account at huggingface.co.
2. Your avatar → **New Space** → name it → SDK: **Gradio** → hardware: **CPU basic (free)** → Public → Create.
3. **Files → Add file → Upload files** → the same three files → Commit.
4. Wait 1-3 minutes while it builds (the *Logs* tab shows progress). Then the *App* tab is your live app, at
   `https://huggingface.co/spaces/<your-name>/<space-name>`.

## If something goes wrong
- **Build error about a version:** open `requirements.txt` and remove the `==1.9.1` pin, commit, wait for the rebuild.
- **"sdk_version" error:** in the README top block, change `sdk_version` to the version Hugging Face suggests in the error.
- **App works but predictions are odd:** that is the model, not the deployment. See "Honest limits" in your notebook.
- **Still stuck:** post a screenshot of the Logs tab in the group chat.

## Make it CV-ready
- The README should say, in your words: the problem, the maths (one formula), the result (your accuracy or error), one limitation.
- Put both links on your CV, next to the CV line from your notebook.
- Pin the repository on your GitHub profile.
