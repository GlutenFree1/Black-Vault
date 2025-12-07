# BlackVault Website - Deployment Instructions

## ✅ Website Complete

Your BlackVault marketing website is ready at:
**`/home/metanoia/blackvault-site/index.html`**

The site is fully responsive, features:
- Dark cyber-security themed design
- Hero section with animated terminal
- Features showcase (6 key features)
- How It Works timeline
- Comparison table
- Downloads section with pricing tiers
- FAQ accordion
- Smooth scrolling navigation
- Mobile hamburger menu

---

## 🚀 Deployment Options

Since your GitHub token doesn't have repository creation permissions, here are 3 easy ways to deploy:

### Option 1: GitHub Pages (Recommended)

1. **Manually create the repository on GitHub:**
   - Go to https://github.com/new
   - Repository name: `blackvault-site`
   - Set to Public
   - Click "Create repository"

2. **Push your code:**
   ```bash
   cd /home/metanoia/blackvault-site
   git remote add origin https://github.com/GlutenFree1/blackvault-site.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main` / folder: `/ (root)`
   - Click Save

4. **Your site will be live at:**
   `https://glutenfree1.github.io/blackvault-site/`

---

### Option 2: Netlify Drop (Easiest - No CLI Required)

1. Go to https://app.netlify.com/drop
2. Drag and drop the `/home/metanoia/blackvault-site` folder
3. Get instant URL like `https://blackvault-xyz.netlify.app`

---

### Option 3: Surge.sh (Simple CLI)

```bash
# Install surge
npm install -g surge

# Deploy
cd /home/metanoia/blackvault-site
surge . blackvault-os.surge.sh
```

Your site will be live at: `https://blackvault-os.surge.sh`

---

## 📁 Repository Status

Your local git repository is initialized and committed:
- Commit: `897a806`
- Branch: `main`
- Status: Ready to push

---

## 🎨 Customization

To customize the site:
1. Edit `/home/metanoia/blackvault-site/index.html`
2. All CSS is in the `<style>` tag in `<head>`
3. All JavaScript is at the bottom before `</body>`
4. No external dependencies needed

---

## 🔗 Quick Deploy Command

If you create the GitHub repo manually, run:

```bash
cd /home/metanoia/blackvault-site
git remote add origin https://github.com/GlutenFree1/blackvault-site.git
git push -u origin main
```

Then enable GitHub Pages in Settings.
