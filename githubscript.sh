#!bin/bash
FOLDER=${PWD##*/};
README="README.md";
GITIGNORE=".gitignore";
curl -u 'username' https://api.github.com/user/repos -d "{\"name\":\"${FOLDER}\"}";
git init;
git remote add origin git@github.com:fremin33/${FOLDER}.git;

if [ ! -e "${README}" ]; then
 echo "# Readme.md" >> README.md;
fi

if [ ! -e "${GITIGNORE}" ]; then
 echo "node_modules/\nbower_components/" >> .gitignore;
fi

git add .;
git commit -m "Initial commit";
git push -u origin master;
