cat <<EOF  > shahenvaz.txt
name salary position
shahenvaz 200000 manager
abhishek 200000 manager
rohit 200000 intern
himanshu 20000 hr
EOF


awk '{print $1,$2,$3}' shahenvaz.txt
echo "press 1. to find something"
echo "press 2. for replace"
read choice 

if [ $choice -eq 1 ]
then
echo "enter the word you want to search"
read search 
grep $search shahenvaz.txt

elif [ $choice -eq 2 ]
then
echo "enter the word you want to replace"
read r
echo "enter the word you want to replace with"
read rw
sed "s/$r/$rw/" shahenvaz.txt

else 
echo "wrong choice"
fi