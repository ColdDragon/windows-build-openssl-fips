cd openssl-1.0.2n
rmdir /S/Q tmp32dll
perl Configure VC-WIN32 --openssldir=E:\openssl\out_x86 threads no-idea no-mdc2 no-rc5
call ms\do_nasm.bat
nmake -f ms\ntdll.mak install