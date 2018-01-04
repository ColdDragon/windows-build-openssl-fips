Windows용 openssl(fips)을 빌드하는 방법

주 내용은 https://wiki.openssl.org/index.php/Compilation_and_Installation 를 참조하였습니다.

테스트 환경 : Windows 10 

Openssl : openssl-1.0.2n, openssl-fips-ecp-2.0.16(특허 문제)

- 절차

1. activeperl download(https://www.activestate.com/activeperl/downloads)

2. openssl download(https://www.openssl.org/source/)

3. openssl-fips download(https://www.openssl.org/source/)

4. batchfile download(build_x86{64}{_fips}.bat)

5. VS20XX x86|x64 Native Tools Command Prompt

6. build_x86{64}{_fips}.bat 실행

