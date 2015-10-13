#!/bin/bash

mkdir A B
touch A/doc1.txt
touch A/doc3.txt
touch A/doc77.txt
touch B/doc1.txt
touch B/doc4.txt
touch B/doc89.txt
echo 'los archivos que se encuentran solo en el directorio de A'
diff -rq A B|grep 'A'
echo 'los archivos que se encuentran en A y B'
ls  A B






