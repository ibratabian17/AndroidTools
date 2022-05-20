. misc/env.sh
CurrentDir=$(pwd)
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

printf "${YELLOW} Script Dibuat Oleh Ibratabian17\n"
printf "${BLUE} JANGAN MENYALAH GUNAKAN SCRIPT INI!!!!!!!!\n\n"

  if [ -z "GithubToken" ]
  then
  printf "${WHITE} Token Is Needed!, You need place it in misc/env.sh \n"
  else
  printf "${RED} Running...\n"
  fi 



clonepixeltotarget(){
  printf "${RED} Starting Clone Pixel\n"
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
  git remote add origin https://github.com/$TargetOrg/$PrefixRepo$reponame
  printf "${YELLOW} Creating New Repo From $reponame to $PrefixRepo$reponame\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $PrefixRepo$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To $TargetOrg Done!\n"
}
clonelineagetotarget(){
  printf "${RED} Starting Clone Lineage\n"
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
  git remote add origin https://github.com/$TargetOrg/$reponame
  printf "${YELLOW} Creating New Repo With Name  $reponame\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $reponame
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Lineage To $TargetOrg Done!\n"
}
clonearrowtotarget(){
  printf "${RED} Starting Clone Arrow\n"
  mkdir temp
  reponame=$1
  branch=$2
  if [ -z "$2" ]
  then
  git clone --quiet https://github.com/ArrowOS/$reponame -b arrow-12.1 temp/ 
  else
  git clone --quiet https://github.com/ArrowOS/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/$TargetOrg/$reponame
  printf "${YELLOW} Creating New Repo With Name  $reponame\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $reponame
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Arrow To $TargetOrg Done!\n"
}
cloneaosptotarget(){
  printf "${RED} Starting Clone AOSP\n"
  mkdir temp
  reponame=$1
  branch=$2
  echo $reponame > ~/aosptempla
  if [ -z "$2" ]
  then
  git clone --quiet https://android.googlesource.com/platform/$reponame -b android-12.1.0.0_r5 temp/ 
  else
  git clone --quiet https://android.googlesource.com/platform/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/$TargetOrg/$PrefixRepo$(sed 's/\//_/g' ~/aosptempla)
  printf "${YELLOW} Creating New Repo From $reponame to $PrefixRepo$(sed 's/\//_/g' ~/aosptempla)\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $PrefixRepo$(sed 's/\//_/g' ~/aosptempla)
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  rm -rf ~/aosptempla
  printf "${GREEN}Clone AOSP To $TargetOrg Done!\n"
}
cloneaosptotargetloop(){
  printf "${RED} Starting Clone AOSP secara loop\n"
  mkdir temp
  reponame=$1
  branch=$2
  echo $reponame > ~/aosptempla
  if [ -z "$2" ]
  then
  git clone --quiet https://android.googlesource.com/platform/$reponame -b android-12.1.0.0_r5 temp/ 
  else
  git clone --quiet https://android.googlesource.com/platform/$reponame -b $branch temp/ 
  fi
  cd temp
  git remote remove origin
  git remote add origin https://github.com/$TargetOrg/$PrefixRepo$(sed 's/\//_/g' ~/aosptempla)
  printf "${YELLOW} Creating New Repo From $reponame to $PrefixRepo$(sed 's/\//_/g' ~/aosptempla)\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $PrefixRepo$(sed 's/\//_/g' ~/aosptempla)
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  gitpushloop 100000 12.1
  else
  git checkout -b $3
  gitpushloop 100000 $3
  fi
  cd ../
  rm -rf temp/
  rm -rf ~/aosptempla
  printf "${GREEN}Clone AOSP To $TargetOrg Done!\n"
}
clonegitlabpixeltotarget(){
  printf "${RED} Starting Clone Gitlab Pixel\n"
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
  git remote add origin https://github.com/$TargetOrg/$PrefixRepo$reponame
  printf "${YELLOW} Creating New Repo From $reponame to $PrefixRepo$reponame\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $PrefixRepo$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To $TargetOrg Done!\n"
}
clonegitlabshpixeltotarget(){
  printf "${RED} Starting Clone Gitlab Self Host Pixel\n"
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
  git remote add origin https://github.com/$TargetOrg/$PrefixRepo$reponame
  printf "${YELLOW} Creating New Repo From $reponame to $PrefixRepo$reponame\n"
  bash python3 $CurrentDir/misc/python/clonerepo.py $PrefixRepo$reponame
  if [ -z "$3" ]
  then
  git checkout -b 12.1
  git push --quiet -u origin 12.1
  else
  git checkout -b $3
  git push --quiet -u origin $3
  fi
  cd ../
  rm -rf temp/
  printf "${GREEN}Clone Pixel To $TargetOrg Done!\n"
}
getrepolist(){
printf "${BLUE}Loading Repo List\n"
bash python3 $CurrentDir/misc/python/getgit.py > repolist
printf "Repo List succesfully loaded!\nHere's a List of Repo:"
printf "${GREEN} $(cat repolist)\nThank you!\n"
}
deleterepo(){
  printf "$(cat repolist)\n\n"
    read -p " Are you sure to delete ? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi
bash python3 $CurrentDir/misc/python/delgit.py
printf "Successfully Delete These Repo\n"
printf "${GREEN} $(cat repolist)\nTerima Kasih!\n"
getrepolist 
}
gitpushloop(){
  printf "${MAGENTA} Pushing repeatedly, it might take some time\n\n"
  Number=$1
  while [[ $Number -gt 1 ]]
do
    printf "${RED} Pushing Commit From HEAD~$Number ${NORMAL}\n"
    git push --quiet -u origin HEAD~$Number:refs/heads/$2
    printf "${GREEN} Push HEAD~$Number Completed ${NORMAL}\n"
    ((Number -= 5000 ))
done
printf "${RED} Pushing Commit For Last Time"
git push --quiet -u origin HEAD~$Number:refs/heads/$2
printf "${GREEN} Pushloop Complete ${NORMAL}\n"
}

migraterepo() {
echo SOON!
}
