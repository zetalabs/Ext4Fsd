copy /y ext4fsd_dummy.inf Release\

stampinf -d * -v * -f Release\ext4fsd_dummy.inf -a NTx86,NTamd64,NTia64,NTARM,NTARM64 || goto :eof

inf2cat /driver:Release /os:XP_X86,2000,XP_X64,Vista_X86,Vista_X64,7_X86,7_X64,Server2003_X86,Server2003_X64,Server2003_IA64,Server2008_X86,Server2008_X64,Server2008_IA64,Server2008R2_X64,Server2008R2_IA64,8_X86,8_X64,8_ARM,10_RS3_X86,10_RS3_X64,10_RS3_ARM64 || goto :eof

if exist cab\ext4fsd.cab del cab\ext4fsd.cab

if not exist cab mkdir cab

if exist disk1\1.cab del disk1\1.cab

makecab /V3 /F cab_list.txt || goto :eof

if exist disk1\1.cab copy /y disk1\1.cab cab\ext4fsd.cab

if not exist cab\ext4fsd.cab goto :eof

signtool sign /a /as /v /sha1 a065b19d9f5a23bc67bb1cf6872283f504ba04b1 /fd sha256 /td sha256 /tr "http://sha256timestamp.ws.symantec.com/sha256/timestamp" cab\ext4fsd.cab || goto :eof
