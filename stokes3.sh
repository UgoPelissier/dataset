#!/bin/bash
clear

python="/mnt/host/c/Anaconda3/python.exe"
freefem="/mnt/host/c/Users/ugo.pelissier/FreeFem++/FreeFem++.exe"

cd stokes3
$python geo.py
bash ./mesh.sh
$freefem stokes3.edp