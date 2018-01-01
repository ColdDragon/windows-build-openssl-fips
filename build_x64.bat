cd openssl-1.0.2n
rmdir /S/Q tmp32dll
perl Configure VC-WIN64A --openssldir=E:\openssl\out_x64 threads no-idea no-mdc2 no-rc5 no-asm
call ms\do_win64a.bat
nmake -f ms\ntdll.mak install