#!/bin/bash
#Author		:Masato
#Created Time :Thu 06 Jun 2019 07:03:24 PM CST
#FileName		:test.sh
#Description	:

args_txt="./args_txt.sh"

#清空文件
> ${args_txt}

chmod +x ${args_txt}


echo "" >> ${args_txt}
echo "#auto don't modify" >> ${args_txt}

#args_arr1={"111" "222" "333" "444"}
args_arr2={"111","222","333","444"}
args_arr3=("111" "222" "333" "444")
args_arr4=("111","222","333","444")

for i in ${args_arr2}
do
	echo "$LINENO this is $i \n"
done
echo ""

for i in ${args_arr3}
do
	echo -e "args_arr3 this is $i \n"
done

for i in ${args_arr3[@]}
do
	echo -e "args_arr3 this is $i \n"
	echo "eval commond"
	eval "echo a$i=\\\"\"ss\\\"\" >> ${args_txt}"
done

echo ""

for i in ${args_arr4[@]}
do
	echo -e "args_arr4 this is $i \n"
done

echo ". command"
. ./args_txt.sh
