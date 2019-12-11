#!/bin/sh
ips=$@
user="root"
pass="abcde@123"
port=16022
timeout=3

! type sshpass &>/dev/null && yum install sshpass -y

for ip in ${ips[*]}
do
  echo "deploying on host: $ip"
  sshpass -p $pass ssh -t -p $port -o StrictHostKeyChecking=no -o ConnectTimeout=$timeout $user@$ip "yum install zsh vim git highlight htop tree -y"
  sshpass -p $pass scp -P $port -o StrictHostKeyChecking=no -o ConnectTimeout=$timeout -r .zshrc $user@$ip:/root/.zshrc
  sshpass -p $pass scp -P $port -o StrictHostKeyChecking=no -o ConnectTimeout=$timeout -r .vimrc $user@$ip:/root/.vimrc
  sshpass -p $pass scp -P $port -o StrictHostKeyChecking=no -o ConnectTimeout=$timeout -r .oh-my-zsh $user@$ip:/root/.oh-my-zsh
  sshpass -p $pass scp -P $port -o StrictHostKeyChecking=no -o ConnectTimeout=$timeout -r .vim $user@$ip:/root/.vim
  test $? -eq 0 && echo "deployed on host: $ip" || echo "failed on host: $ip"
  echo "=================================================================================================="
done
