#!/bin/bash
clear

python="/mnt/host/c/Anaconda3/python.exe"
freefem="/mnt/host/c/Users/ugo.pelissier/FreeFem++/FreeFem++.exe"

while getopts p:n:rmin:rmax:L_ref:H_ref:m:l:c: flag
do
    case "${flag}" in
        p) p=${OPTARG};;
        n) n${OPTARG};;
        rmin) rmin=${OPTARG};;
        rmax) rmax=${OPTARG};;
        L_ref) L_ref=${OPTARG};;
        H_ref) H_ref=${OPTARG};;
        m) m=${OPTARG};;
        l) l=${OPTARG};;
        c) c=${OPTARG};;
    esac
done

if [ "$1" == "-h" ]; then
    echo "Usage: ./stokes2.sh -p <p> -n <n> -rmin <rmin> -rmax <rmax> -L_ref <L_ref> -H_ref <H_ref> -m <m> -l <l> -c <c>"
    echo "p: maximum number of holes in the domain"
    echo "n: number of files to create for each number of holes"
    echo "rmin: minimum radius"
    echo "rmax: maximum radius"
    echo "L_ref: reference length"
    echo "H_ref: reference height"
    echo "m: margin between the holes and the domain borders"
    echo "l: mesh size of the lines"
    echo "c: mesh size of the circles"
    exit 0
fi

cd stokes2
$python main.py -p $p -n $n -r $rmin $rmax -L_ref $L_ref -H_ref $H_ref -m $m -l $l -c $c
$freefem stokes.edp