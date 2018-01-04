cd openssl-1.0.2n
rmdir /S/Q tmp32dll
perl Configure VC-WIN32 --openssldir=E:\openssl\out_x86 threads no-ssl2 no-ssl3 no-idea no-mdc2 no-rc5 no-ec2m
perl -pi".bak" -e "s/-WX//g" Makefile
call ms\do_nasm.bat
nmake -f ms\ntdll.mak install
cd ..