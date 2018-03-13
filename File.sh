n=1
while [ $n == 1 ]
do
echo -e "\n enter the choice :\n1.Display Contents of the files \n2. Display first and last parts of the files.\n3.Redirect the contents of files f1 and f2 to f3\n4.Create file f4 and move contents of f3 to f4.\n5.Search a string \n6.Display a file as pages(more) \n7.Display a file as pages(less)\n8.Copy contents of one file to another \n9.Count Number of Lines, Words, Characters in a file\n 10.search for a file name \n11.Exit"
read ch
case $ch
in 
1)  echo "Contents of file1 "
    cat file1.txt
    echo "Contents of file2 "
    cat file2.txt
    echo "Contents of file1 "
    cat file3.txt;;
2)  echo "header of file 1:"
    head -n 1 file1.txt
    echo "header of file 2:"
    head -n 1 file2.txt
    echo "header of file 3:"
    head -n 1 file3.txt
    echo "last part of file 1:"
    tail -n 1 file1.txt
    echo "last part of file 2:"
    tail -n 1 file2.txt
    echo "last part of file 3:"
    tail -n 1 file3.txt;;
3)  cat file1.txt  file2.txt > file3.txt 
    echo "Redirected ";;
4)  mv file3.txt f4.txt
    echo "Moved ";;
5)  echo "enter the string to search :"
    read str
    grep $str file2.txt
    find  file2.txt;;
6)  echo " a file as pages(more)"
    more f5.txt;;
7)  echo " a file as pages(less)"
    less f6.txt;;
8)  cp f6.txt file1.txt;;
9)  echo "No.of lines in f6.txt :"  
    wc -l f6.txt
    echo "No.of characters in f6.txt :"  
    wc -c f6.txt
    echo "No.of words in f6.txt : "  
    wc -w f6.txt;;
10) echo "enter the file name to search : "
    read fname
    find $fname;;
 11) $n=0;;
esac
done
    
    
