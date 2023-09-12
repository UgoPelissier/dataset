#!/bin/bash
clear

python="/mnt/host/c/Anaconda3/python.exe"
gmsh="/mnt/host/c/Users/ugo.pelissier/gmsh/gmsh.exe"
freefem="/mnt/host/c/Users/ugo.pelissier/FreeFem++/FreeFem++.exe"

if [ "$1" == "-h" ]; then
    echo "Usage: ./stokes3.sh -l <l> -c <c>"
    echo "l: mesh size of the lines"
    echo "c: mesh size of the circles"
    exit 0
fi

while getopts l:c: flag
do
    case "${flag}" in
        l) l=${OPTARG};;
        c) c=${OPTARG};;
    esac
done

cd stokes3
$python main.py -l $l -c $c
$gmsh convert.geo
clear
$freefem stokes3.edp