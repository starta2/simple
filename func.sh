#!/bin/sh  
function findit(){          
    if [ $# -lt 1 ] ; then  #判断函数参数个数                 
     echo "Usage: findit filename"                 
     return 1          
    fi        
    for loop #遍历调用函数的参数            
        do  
                    find $HOME -name $loop -print  
            done      
    return 0  
}  

while getopts u:ah opt
do
    case $opt in
    u)
    echo "提供了选项u和参数：$OPTARG";;
    a)
    echo "提供了选项a";;
    h)
    echo "提供了选项h";;
    *)
    ;;
    esac
done