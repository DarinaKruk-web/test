#! /bin/bash
clear


function Menu(){
  echo -e "0. Exit\n1. Show all groups\n2. Show group by name"
  read choice 

  case "$choice" in
    0) exit=1; echo "Bye!" ;;	  
    1) ShowGroups; ;;
    2) ShowGroupByName; ;;
    *) echo "Wrong choice." ;;
  esac
}

function ShowGroupByName(){
  clear

  echo "Enter group name: "
  read groupName
  cat /etc/group | grep $groupName
  echo "============================="

}

function ShowGroups(){
 sudo less /etc/group
}

let exit=0

while [[ $exit == 0  ]]
do
 Menu;

done
