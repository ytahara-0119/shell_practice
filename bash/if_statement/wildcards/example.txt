echo '******* ls'
ls 
echo '******* list files ending with 1-9 .txt'
ls file[1-9].txt
echo '******* list 1-9 for both .txt and .img'
ls file[1-9].{txt,img}
echo '******* list 5-15 of .txt'
ls file{[5-9],[1][0-5]}.txt
echo '*******  echo list all .img files'
ls *.img
echo '******* delete 13-21 of img'
rm file{[1][3-9],[2][0-1]}.img
echo '******* ls *.img'
ls *.img
echo '******* list all files which has 3 characters long extension starting with t listt add files, which has 3 characters long extension starting with t'
ls *.t??
