signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext2Mgr\Release\x86\Ext2Mgr.exe
TIMEOUT /T 3 /NOBREAK
signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext2Mgr\Release\x64\Ext2Mgr.exe
TIMEOUT /T 3 /NOBREAK

signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext2Srv\Release\x86\Ext2Srv.exe
TIMEOUT /T 3 /NOBREAK
signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext2Srv\Release\x64\Ext2Srv.exe
TIMEOUT /T 3 /NOBREAK

signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext4Fsd\Release\x86\Ext4Fsd.sys
TIMEOUT /T 3 /NOBREAK
signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext4Fsd\Release\x64\Ext4Fsd.sys
TIMEOUT /T 3 /NOBREAK

signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256 ..\Ext4Fsd\Ext2Fsd.inf
TIMEOUT /T 3 /NOBREAK

makensis ext4fsd.nsi
TIMEOUT /T 3 /NOBREAK

signtool sign /a /as /v /fd sha256 /sha1 9a7e6042a8a5f2721684ec8c3cb864835c0d10c5 /tr http://time.certum.pl /td sha256  Ext2Fsd-setup.exe
