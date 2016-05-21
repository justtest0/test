git init
git add .
echo '>>> INPUT COMMIT'
read a
git commit -m $a
git show

echo '>>> SINC WITH SERVER? y/n'
read a
y="y"
if  [ "$a" == "$y" ]
then 
echo '>>> INPUT BRANCH NAME'
read a
git pull origin $a
git push origin $a
else echo '>>> U SELECT NO'
fi
echo '>>> PRESS ANY KEY TO EXIT'
read $a