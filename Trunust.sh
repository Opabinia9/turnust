#!/bin/bash
clear
echo "Starting"
echo "Unnamed - Version 1"
echo "Welcome, . . ."
read -p $'Enter Name...\n' -r name
echo "hello, $name"
res="N"
until [[ $res = "Y" || $res = "y" ]]; do
        if [[ $res = "N" || $res = "n" ]]; then
                valid="False"
                until [ $valid = "True" ]; do
                        echo "Please Select Your Race:"
                        read -p $'Human, Elf or Ork\n' -r race
                        if [[ "$race" =~ ^[Hh]uman|^[Ee]lf|^[Oo]rk$ ]]; then
                                case $race in
                                        human)
                                                race="Human"
                                                ;;
                                        elf)
                                                race="Elf"
                                                ;;
                                        ork)
                                                race="Ork"
                                                ;;
                                esac
                                valid="True"
                        else
                                echo "Invalid Entry"
                        fi
                done
                echo "Selected Race: $race"
                echo "Please Confirm: Y/N"
                read res
        elif [[$res != "N" && $res != "n"]]; then
                echo $'Invalid Option: \n'
                echo "Please Confirm: Y/N"
                read res
        fi
done
res="N"
until [[ $res = "Y" || $res = "y" ]]; do
        if [[ $res = "N" || $res = "n" ]]; then
                valid="False"
                until [ $valid = "True" ]; do
                        echo "Please Select Your Class:"
                        read -p $'Fighter, Healer or Rouge\n' -r class
                        if [[ "$class" =~ ^[Ff]ighter|^[Hh]ealer|^[Rr]ouge$ ]]; then
                                case $class in
                                        fighter)
                                                class="Fighter"
                                                ;;
                                        healer)
                                                class="Healer"
                                                ;;
                                        rouge)
                                                class="Rouge"
                                                ;;
                                esac
                                valid="True"
                        else
                                echo "Invalid Entry"
                        fi
                done
                echo "Selected Class: $class"
                echo "Please Confirm: Y/N"
                read res
        elif [[$res != "N" && $res != "n"]]; then
                echo $'Invalid Option: \n'
                echo "Please Confirm: Y/N"
                read res
        fi
done
echo "Character Creation Complete"
echo "Name: $name"
echo "Race: $race"
echo "Class: $class"
echo $'Choose Your Weapon'
case $class in
        Fighter)
                echo "Sword, Staff, Mace"
                ;;
        Healer)
                echo "Staff, ?, ?"
                ;;
        Rouge)
                echo "Dagger, Poisen, Blowgun"
                ;;
esac
