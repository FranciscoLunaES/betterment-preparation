#! /bin/bash

# matrix1=(121 1 87 78)
# matrix2=(45 9 2 3)
# order=2

# matrix1=(15 16 72 10 29 1 2 3 0)
# matrix2=(51 8 2 4 6 2 8 0 1)
# order=3

# matrix1=(15 16 72 51 8 2 4 6 2 8 0 29 1 2 3 0)
# matrix2=(51 8 2 4 6 2 8 0 16 72 10 29 1 2 3 0)
# order=4

displayMatrix () {
for ((i=1; i<= $order; i++))
    do
        next=$(expr $i \* $order)
        prev=$(expr $next - $(expr $order - 1))
        echo $@ | cut -d " " -f $prev-$next
    done
}

sumMatrix (){
    arr=()
    end=$(expr $order \* $order)
    for ((i=0; i< $end; i++))
    do
        arr[${#arr[@]}]=$(expr ${matrix2[$i]} + ${matrix1[$i]})
    done
}

sumMatrix
echo "First matrix"
displayMatrix "${matrix1[@]}"
echo "Second matrix"
displayMatrix "${matrix2[@]}"
echo "Result matrix"
displayMatrix "${arr[@]}"