#!/bin/bash
#测试文件
#简单的测试最基本的功能
#删除回收站,避免回收站中的重名
if [ -d ~/.trash_c ]; then
	rm -r ~/.trash_c
fi
if [ -d ~/.trash_sh ]; then
	rm -r ~/.trash_sh
fi
if [ -d ~/.trash_tar ]; then
	rm -r ~/.trash_tar
fi
if [ -d ~/.trash_o ]; then
	rm -r ~/.trash_o
fi
if [ -d ~/.trash_dir ]; then
	rm -r ~/.trash_dir
fi
#产生测试文件
if [ ! -d ./1 ]; then
	mkdir 1
	touch ./1/2
fi
./rm_ -i ./1
if [ ! -f ./3 ]; then
	touch ./3
fi
./rm_ -i ./3
if [ ! -f ./4.c ]; then
	touch ./4.c
fi
./rm_ ./4.c
if [ ! -f ./5.sh ]; then
	touch ./5.sh
fi
./rm_ ./5.sh
if [ ! -f ./6.tar ]; then
	touch ./6.tar
fi
./rm_ ./6.tar
if [ ! -f ./7.zip ]; then
	touch ./7.zip
fi
./rm_ ./7.zip
if [ ! -f ./8.tar.gz ]; then
	touch ./8.tar.gz
fi
./rm_ ./8.tar.gz
if [ ! -f ./9.gz ]; then
	touch ./9.gz
fi
./rm_ ./9.gz
if [ ! -f ./10.tar.bz2 ]; then
	touch ./10.tar.bz2
fi
./rm_ ./10.tar.bz2
if [ ! -f ./11.tgz ]; then
	touch ./11.tgz
fi
./rm_ ./11.tgz
if [ ! -f ./12.bz2 ]; then
	touch ./12.bz2
fi
./rm_ ./12.bz2
if [ ! -f ./13.bz ]; then
	touch ./13.bz
fi
./rm_ ./13.bz
if [ ! -f ./14.tar.bz ]; then
	touch ./14.tar.bz
fi
./rm_ ./14.tar.bz
if [ ! -f ./15.Z ]; then
	touch ./15.Z
fi
./rm_ ./15.Z
if [ ! -f ./16.tar.Z ]; then
	touch ./16.tar.Z
fi
./rm_ ./16.tar.Z
if [ ! -f ./17.rar ]; then
	touch ./17.rar
fi
./rm_ ./17.rar
if [ ! -f ./18.deb ]; then
	touch ./18.deb
fi
./rm_ ./18.deb
if [ ! -f ./19.apk ]; then
	touch ./19.apk
fi
./rm_ ./19.apk
echo "########trash_c########"
ls  ~/.trash_c
echo "########trash_sh#######"
ls  ~/.trash_sh
echo "########trash_o########"
ls  ~/.trash_o
echo "########trash_tar######"
ls  ~/.trash_tar
echo "########trash_dir######"
ls  ~/.trash_dir
