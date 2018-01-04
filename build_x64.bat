cd openssl-1.0.2n
rmdir /S/Q tmp32dll
perl Configure VC-WIN64A --openssldir=E:\openssl\out_x64 threads no-ssl2 no-ssl3 no-idea no-mdc2 no-rc5 no-ec2m no-asm
perl -pi".bak" -e "s/-WX//g" Makefile
call ms\do_win64a.bat
nmake -f ms\ntdll.mak install
cd ..
