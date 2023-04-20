cd ~/octavi

# Push to GitLab
git init
git add .
git commit -q -m "Push existing octavi source to GitLab"
git remote add source https://gitlab.com/GhostMaster69-dev/octavi-source
git push -q source master
