$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
git config --global user.name "Kwon Yewon"
git config --global user.email "whtk138@gmail.com"
git init
git add .
git commit -m "Initial commit"
gh repo create my-first-idea --public --source=. --remote=origin --push
