# 🚀 Using Git in Starforge JupyterLab

This guide explains how to:

* Clone repositories
* Commit changes
* Push to GitHub / GitLab
* Use Git inside JupyterLab (including the Git sidebar)

Starforge does **not** use the platform GitHub token for your work.
You authenticate with your **own Git credentials**.

---

# ✅ Recommended: SSH Authentication (One-Time Setup)

SSH is the most secure and reliable method in this environment.

---

## 1️⃣ Generate an SSH Key (One Time Only)

Open **Terminal** in JupyterLab and run:

```bash
ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_ed25519
```

This creates:

```
~/.ssh/id_ed25519        (private key)
~/.ssh/id_ed25519.pub    (public key)
```

---

## 2️⃣ Add Your Public Key to GitHub / GitLab

Show your public key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copy the entire output.

### GitHub:

* Go to **Settings → SSH and GPG keys**
* Click **New SSH key**
* Paste the key
* Save

### GitLab:

* Go to **Preferences → SSH Keys**
* Paste and save

---

## 3️⃣ Test the Connection

```bash
ssh -T git@github.com
```

You should see:

```
Hi <username>! You've successfully authenticated...
```

If you see that, you're ready.

---

# 📦 Cloning a Repository

⚠️ Always use the **SSH URL**, not HTTPS.

Correct format:

```
git@github.com:ORG/REPO.git
```

Clone:

```bash
git clone git@github.com:ORG/REPO.git
```

This creates a folder with your project.

---

# ✏️ Making Changes and Committing

Navigate into your repo:

```bash
cd REPO
```

Check status:

```bash
git status
```

Add files:

```bash
git add filename.py
```

Or add everything:

```bash
git add .
```

Commit:

```bash
git commit -m "Describe your change here"
```

---

# 🚀 Pushing Changes

Push to the default branch:

```bash
git push
```

If it's a new branch:

```bash
git push -u origin my-branch-name
```

---

# 🌿 Creating a Branch (Recommended Workflow)

```bash
git checkout -b feature/my-new-feature
```

After committing:

```bash
git push -u origin feature/my-new-feature
```

Then create a Pull Request / Merge Request in GitHub/GitLab.

---

# 🧭 Using the JupyterLab Git Sidebar

You can also:

1. Open the **Git icon** in the left sidebar.
2. Stage files with the "+" button.
3. Write a commit message.
4. Click **Commit**.
5. Click **Push**.

The sidebar uses the same SSH authentication.

---

# 🔍 Checking Remotes

To confirm you're using SSH:

```bash
git remote -v
```

You should see:

```
git@github.com:ORG/REPO.git
```

If you see `https://...`, switch it:

```bash
git remote set-url origin git@github.com:ORG/REPO.git
```

---

# 🔐 Optional: Using HTTPS Instead of SSH

If you prefer HTTPS:

1. Create a **Personal Access Token (PAT)** in GitHub.
2. Enable credential storage:

```bash
git config --global credential.helper store
```

3. When pushing, use:

   * Username: your GitHub username
   * Password: your PAT

⚠️ Note: This stores the token in plaintext in your home directory.

SSH is recommended.

---

# 📁 Where Your Git Credentials Are Stored

Your SSH keys are stored in:

```
~/.ssh/
```

Your home directory is persistent, so your keys remain across sessions.

---

# 🆘 Troubleshooting

### Permission denied (publickey)

* Make sure you added the correct public key.
* Confirm you used SSH URL.

### Host verification failed

Contact platform support.

### Push rejected

Pull latest changes first:

```bash
git pull --rebase
```

---

# 🎯 Best Practices

* Always create a branch for new work.
* Write meaningful commit messages.
* Pull frequently.
* Never commit secrets.

---

If you experience issues, contact the Starforge platform team.

