git pull origin master
git add .
echo "Enter your commit: "
read $commit
git commit -m "$commit"
git push origin master