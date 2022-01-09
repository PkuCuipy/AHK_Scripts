SetTitleMatchMode RegEx ; 这个似乎必须放在最顶上, 否则有问题, 没仔细研究原因


; 模拟 Command + 字母
!w::
    Send, ^w
    return
!s::
    Send, ^s
    return
!c::
    Send, ^c
    return
!v::
    Send, ^v
    return
!x::
    Send, ^x
    return
!z::
    Send, ^z
    return
!+z::
    Send, ^Z
    return
!a::
    Send, ^a
    return
!f::
    Send, ^f
    return
!r::
    Send, ^r
    return
!t::
    Send ^t
    return
!+t::
    Send ^T
    return
!q::
    Send !{F4}
    return

; Alt + n 对浏览器进行特判, 
; 在浏览器中, Alt + n 应映射为 Ctrl + t (新建标签页), 而不是映射为 Ctrl + n (新建窗口)
#IfWinActive .*- Google Chrome$ 
!n::
    Send, ^t    ; 如果是大写的 T, 就相当于 ctrl + SHIFT + t
    return
#IfWinActive .*- Microsoft​ Edge$ 
!n::
    Send, ^t    ; 如果是大写的 T, 就相当于 ctrl + SHIFT + t
    return
#IfWinActive
!n::
    Send, ^n
    return


; 模拟 Command + 方向键
!Left::
    Send, {Home}
    return
!Right::
    Send, {End}
    return
!Up::
    Send, {PgUp}
    return
!Down::
    Send, {PgDn}
    return


; 模拟 Command + Shift + 方向键
!+Left::
    Send, {ShiftDown}}{Home}{ShiftUp}
    return
!+Right::
    Send, {ShiftDown}}{End}{ShiftUp}
    return
!+Up::
    Send, {ShiftDown}}{PgUp}{ShiftUp}
    return
!+Down::
    Send, {ShiftDown}}{PgDn}{ShiftUp}
    return


; 模拟 Command + /  (注释)
!/::
    Send, ^/
    return

; 模拟 Command + Delete (删除光标左边内容)
#IfWinNotActive, .*- Visual Studio Code$    ; VS Code 中表现不稳定, 直接在 VSC 中修改快捷键好了
!BackSpace::
    Send, {ShiftDown}}{Home}{ShiftUp}
    Send, {BackSpace}
    return


; 模拟 Command + Space 进行 Spotlight 搜索
#IfWinActive, ahk_exe SearchHost
!Space:: 
    Send, {Esc}
    return
#IfWinActive
!Space::
    Send, #s
    return

