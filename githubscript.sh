#!bin/bash
FOLDER=${PWD##*/}
curl -u 'fremin33' https://api.github.com/user/repos -d "{\"name\":\"${FOLDER}\"}";
git init;
git remote add origin git@github.com:fremin33/${FOLDER}.git;
echo "# Readme.md" >> README.md;
echo "node_modules/\nbower_components/" >> .gitignore;
git add .;
git commit -m "Initial commit";
git push -u origin master;
