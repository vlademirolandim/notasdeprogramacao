
````
git init
ssh-keygen
git config --global user.email "You@DomainName"
git config --global user.name "Your name here"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
git remote add origin git@github.com:YourUserName/YourRepo.git
git pull origin main
git branch -M main
````
