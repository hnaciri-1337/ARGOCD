cd /vagrant
./scripts/install.sh

git init
git remote add origin https://github.com/hnaciri-1337/ARGOCD.git
git add confs/
git commit -m "v1"
git push -u origin main

sudo kubectl apply -f confs/argocd-app.yaml

./scripts/exposePorts.sh
./scripts/PasswordArgoCD.sh


# change application version in git and push changes