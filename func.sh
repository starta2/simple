#!/bin/sh  
function findit(){          
    if [ $# -lt 1 ] ; then  #�жϺ�����������                 
     echo "Usage: findit filename"                 
     return 1          
    fi        
    for loop #�������ú����Ĳ���            
        do  
                    find $HOME -name $loop -print  
            done      
    return 0  
}  

while getopts u:ah opt
do
    case $opt in
    u)
    echo "�ṩ��ѡ��u�Ͳ�����$OPTARG";;
    a)
    echo "�ṩ��ѡ��a";;
    h)
    echo "�ṩ��ѡ��h";;
    *)
    ;;
    esac
done