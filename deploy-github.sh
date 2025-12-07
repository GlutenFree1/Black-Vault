#!/bin/bash

# BlackVault GitHub Pages Deployment Script
# ==========================================

echo "🚀 BlackVault Deployment Helper"
echo "================================"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found!"
    echo "Please run this script from the blackvault-site directory."
    exit 1
fi

echo "📋 Before deploying, please:"
echo "   1. Go to https://github.com/new"
echo "   2. Create a repository named: blackvault-site"
echo "   3. Make it PUBLIC"
echo "   4. Do NOT initialize with README"
echo ""
read -p "✓ Have you created the repository? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Cancelled. Please create the repository first."
    exit 1
fi

echo ""
read -p "Enter your GitHub username: " username

if [ -z "$username" ]; then
    echo "❌ Username cannot be empty!"
    exit 1
fi

echo ""
echo "🔗 Adding remote repository..."
git remote remove origin 2>/dev/null  # Remove if exists
git remote add origin "https://github.com/$username/blackvault-site.git"

echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "📝 Final Steps:"
    echo "   1. Go to: https://github.com/$username/blackvault-site/settings/pages"
    echo "   2. Under 'Source', select: main branch"
    echo "   3. Click 'Save'"
    echo ""
    echo "🌐 Your site will be live at:"
    echo "   https://$username.github.io/blackvault-site/"
    echo ""
    echo "⏱️  It may take 1-2 minutes to deploy."
else
    echo ""
    echo "❌ Push failed. Common issues:"
    echo "   - Repository doesn't exist"
    echo "   - Authentication required (use personal access token)"
    echo "   - Repository is not empty"
    echo ""
    echo "💡 Manual deployment:"
    echo "   git remote add origin https://github.com/$username/blackvault-site.git"
    echo "   git push -u origin main"
    exit 1
fi
