BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)

printf "${YELLOW} Script Created By Ibratabian17\n"
printf "${BLUE} DON'T ABUSE THIS SCRIPT!!!!!!!!!!!!\n\n"

printf "${WHITE} Token May Needed\n"
printf "${BLUE} Replace \"INPUTGHPHERE\" To Your Token\n"
printf "${RED} Loading Script\n"

clonepixeltoswift(){
  printf "${RED} Starting Clone From Pixel\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://github.com/PixelExperience/$reponame -b twelve temp/ 
  else
  git clone --quiet https://github.com/PixelExperience/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/android_$reponame
  printf "${YELLOW} Creating New Repo by $reponame to android_$reponame\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py android_$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To Swift Done!\n"
}
clonelineagetoswift(){
  printf "${RED} Starting Clone From Lineage\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://github.com/LineageOS/$reponame -b lineage-19.0 temp/ 
  else
  git clone --quiet https://github.com/LineageOS/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/$reponame
  printf "${YELLOW} Creating New Repo by $reponame\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py $reponame
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Lineage To Swift Done!\n"
}
clonearrowtoswift(){
  printf "${RED} Starting Clone From Arrow\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://github.com/ArrowOS/$reponame -b arrow-12.0 temp/ 
  else
  git clone --quiet https://github.com/ArrowOS/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/$reponame
  printf "${YELLOW} Creating New Repo by $reponame\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py $reponame
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Arrow To Swift Done!\n"
}
cloneaosptoswift(){
  printf "${RED} Starting Clone From AOSP\n"
  mkdir temp
  reponame=$1
  branch=$2
  echo $reponame > ~/aosptempla
  if [ -z "$2" ]
  then
  git clone --quiet https://android.googlesource.com/platform/$reponame -b android-12.0.0_r32 temp/ 
  else
  git clone --quiet https://android.googlesource.com/platform/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/android_$(sed 's/\//_/g' ~/aosptempla)
  printf "${YELLOW} Creating New Repo by $reponame to android_$(sed 's/\//_/g' ~/aosptempla)\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py android_$(sed 's/\//_/g' ~/aosptempla)
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  rm -rf ~/aosptempla
  printf "${GREEN}Clone AOSP To Swift Done!\n"
}
cloneaosptoswiftloop(){
  printf "${RED} Starting Clone From AOSP By loop\n"
  mkdir temp
  reponame=$1
  branch=$2
  echo $reponame > ~/aosptempla
  if [ -z "$2" ]
  then
  git clone --quiet https://android.googlesource.com/platform/$reponame -b android-12.0.0_r32 temp/ 
  else
  git clone --quiet https://android.googlesource.com/platform/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/android_$(sed 's/\//_/g' ~/aosptempla)
  printf "${YELLOW} Creating New Repo by $reponame to android_$(sed 's/\//_/g' ~/aosptempla)\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py android_$(sed 's/\//_/g' ~/aosptempla)
  if [ -z "$3" ]
  then
  git checkout -b 12
  gitpushloop 100000 12
  else
  git checkout -b $3
  gitpushloop 100000 $3
  fi
  cd ../
  rm -rf temp/
  rm -rf ~/aosptempla
  printf "${GREEN}Clone AOSP To Swift Done!\n"
}
clonegitlabpixeltoswift(){
  printf "${RED} Starting Clone From Gitlab Pixel\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://gitlab.com/PixelExperience/$reponame -b twelve temp/ 
  else
  git clone --quiet https://gitlab.com/PixelExperience/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/android_$reponame
  printf "${YELLOW} Creating New Repo by $reponame to android_$reponame\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py android_$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To Swift Done!\n"
}
clonegitlabshpixeltoswift(){
  printf "${RED} Starting Clone From Gitlab Self Host Pixel\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://gitlab.pixelexperience.org/android/$reponame -b twelve temp/ 
  else
  git clone --quiet https://gitlab.pixelexperience.org/android/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/SwiftOS-DROID/android_$reponame
  printf "${YELLOW} Creating New Repo by $reponame to android_$reponame\n"
  bash python3 /workspace/gitpod-workspaces/helperpython/clonerepo.py android_$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12
  git push --quiet -u origin 12
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To Swift Done!\n"
}
getrepolist(){
printf "${BLUE}Loading Repository List"
bash python3 /workspace/gitpod-workspaces/helperpython/getgit.py > repolist
printf "repo list succesfully loaded!\nBerikut Daftar Repo:"
printf "${GREEN} $(cat repolist)\nThank You!\n"
}
deleterepo(){
printf "it will remove all repo from deleterepo\n"
bash python3 /workspace/gitpod-workspaces/helperpython/delgit.py
printf "Succesfully Delete Repo List Below\n"
printf "${GREEN} $(cat repolist)\nThank You!\n"
printf "Refreshing Repo List!\n"
getrepolist > /dev/null
}
gitpushloop(){
  printf "${MAGENTA} pushing as Berulang, May Will Eat Time\n\n"
  Number=$1
  while [[ $Number -gt 0 ]]
do
    printf "${RED} pushig Commit From HEAD~$Number ${NORMAL}\n"
    git push --quiet -u origin HEAD~$Number:refs/heads/$2
    printf "${GREEN} Push Commit Succesfully ${NORMAL}\n"
    ((Number -= 5000 ))
done
}
