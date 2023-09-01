#!/bin/bash

function ProgressBar {
# Process data
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done

    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")

printf "\rProgress : [${_fill// /#}${_empty// /-}] ${_progress}%% (${i}/${Nfiles})"

}

for arg in "$@"
do
   key=$(echo $arg | cut -f1 -d=)

   key_length=${#key}
   value="${arg:$key_length+1}"

   export "$key"="$value"
done

gmsh="/mnt/host/c/Users/ugo.pelissier/gmsh/gmsh.exe"

for i in $(seq $Nfiles);
do
    j=$(($i-1))
    if [ $j -lt 10 ]
    then
        $gmsh geo/cad_00${j}.geo - >> mesh.log
        ProgressBar ${i} ${Nfiles}
    elif [ $j -lt 100 ] 
    then
         $gmsh geo/cad_0${j}.geo - >> mesh.log
        ProgressBar ${i} ${Nfiles}
    else 
         $gmsh geo/cad_${j}.geo - >> mesh.log
        ProgressBar ${i} ${Nfiles}
    fi
done

mv geo/cad_*.msh mesh/