; 来自网络: https://www.autoahk.com/archives/38036
MsgBox, 4,, 为以后的.ahk脚本添加以管理员权限运行吗？`n（选“否”可退回默认用户权限）
IfMsgBox Yes
{
    RegWrite, REG_SZ, HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    RegWrite, REG_SZ, HKCR\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    MsgBox 添加.ahk脚本管理员权限成功，`n以后的.ahk脚本默认都是以管理员权限运行。
    Return
} 
else {
    RegDelete, HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    RegDelete, HKCR\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers,%A_AhkPath%, ~ RUNASADMIN
    MsgBox 清除.ahk脚本管理员权限，`n以后的.ahk脚本都是以用户权限运行。
    Return
}