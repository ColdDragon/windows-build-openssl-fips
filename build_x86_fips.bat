
rem vcvarsall x86
e:
cd E:\openssl\openssl-fips-ecp-2.0.16
Set FPSDIR=E:\openssl\openssl-fips-ecp-2.0.16
Set PROCESSOR_ARCHITECTURE=x86

xcopy inc32\* include\* /O /X /E /H /K /Y /R /C

call ms\do_fips.bat
mkdir lib
copy out32dll\* lib\*
mkdir bin
copy util\* bin\*
copy out32dll\fips_standalone_sha1.exe bin
xcopy inc32\* include\* /O /X /E /H /K /Y /R /C

cd ..\openssl-1.0.2n
rmdir /S/Q tmp32dll
perl Configure VC-WIN32 fips --openssldir=E:\openssl\out_x86_fips threads no-ssl2 no-ssl3 no-idea no-mdc2 no-rc5 no-ec2m --with-fipsdir=E:\openssl\openssl-fips-ecp-2.0.16
perl -pi".bak" -e "s/-WX//g" Makefile
call ms\do_nasm.bat
nmake -f ms\ntdll.mak install
cd ..