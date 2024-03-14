#!/bin/bash

if [[ "$1" == "--h" || "$1" == "--help" ]]; then
  echo "Введите направление исполнителя (left, right, up, down)"
  exit 0
fi
 
x=0
y=0
 
 
 
while true; do
 
  echo "Текущая позиция: ($x, $y)"
  read -p "Куда идти? (left/l, right/r, up/u, down/d, quit): " dir
 
  # Обработка ввода пользователя
  case $dir in
    l | left)
      ((x--))
      ;;
    r | right)
      ((x++))
      ;;
    u | up)
      ((y++))
      ;;
    d | down)
      ((y--))
      ;;
	--h |--help)
		echo  "Введите направление исполнителя (left, right, up, down)"
		;;
    quit)
      echo "Выход из игры."
      exit 0
      ;;
    *)
      echo "Неверная команда. Используйте left/l, right/r, up/u, down/d или quit."
 
      ;;
  esac
done
 