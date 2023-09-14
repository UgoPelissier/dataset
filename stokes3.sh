#!/bin/bash
clear

python="/mnt/host/c/Anaconda3/python.exe"
gmsh="/mnt/host/c/Users/ugo.pelissier/gmsh/gmsh.exe"
freefem="/mnt/host/c/Users/ugo.pelissier/FreeFem++/FreeFem++.exe"

if [ "$1" == "-h" ]; then
    echo "Usage: ./stokes3.sh -p <p> -n <n> -l <l> -c <c>"
    echo "p: number of holes in the domain"
    echo "n: number of files to generate"
    echo "l: mesh size of the lines"
    echo "c: mesh size of the circles"
    exit 0
fi

while getopts p:n:l:c: flag
do
    case "${flag}" in
        p) p=${OPTARG};;
        n) n=${OPTARG};;
        l) l=${OPTARG};;
        c) c=${OPTARG};;
    esac
done

cd stokes3
$python main.py -p $p -n $n -l $l -c $c
$gmsh convert.geo
$freefem stokes3.edp