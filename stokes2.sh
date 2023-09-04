#!/bin/bash
clear

python="/mnt/host/c/Anaconda3/python.exe"
freefem="/mnt/host/c/Users/ugo.pelissier/FreeFem++/FreeFem++.exe"

cd stokes2
python main.py
freefem stokes.edp