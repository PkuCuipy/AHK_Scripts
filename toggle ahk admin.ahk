; ��������: https://www.autoahk.com/archives/38036
MsgBox, 4,, Ϊ�Ժ��.ahk�ű�����Թ���ԱȨ��������`n��ѡ���񡱿��˻�Ĭ���û�Ȩ�ޣ�
IfMsgBox Yes
{
    RegWrite, REG_SZ, HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    RegWrite, REG_SZ, HKCR\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    MsgBox ���.ahk�ű�����ԱȨ�޳ɹ���`n�Ժ��.ahk�ű�Ĭ�϶����Թ���ԱȨ�����С�
    Return
} 
else {
    RegDelete, HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    RegDelete, HKCR\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    MsgBox ���.ahk�ű�����ԱȨ�ޣ�`n�Ժ��.ahk�ű��������û�Ȩ�����С�
    Return
}