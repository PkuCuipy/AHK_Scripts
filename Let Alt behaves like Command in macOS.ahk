SetTitleMatchMode RegEx ; 这个似乎必须放在最顶上, 否则有问题, 没仔细研究原因



;============================================;
;       关于特定 App 之类的特判请放在这里        ;
;============================================;


; Alt + n 对浏览器进行特判: Alt + n 应映射为 Ctrl + t (新建标签页), 而不是映射为 Ctrl + n (新建窗口)
#IfWinActive .*- Google Chrome$ 
!n::
    Send, ^t    ; 如果是大写的 T, 就相当于 ctrl + SHIFT + t
    return
#IfWinActive .*- Microsoft​ Edge$ 
!n::
    Send, ^t
    return
#IfWinActive


; Chrome 中, 使用 Alt + 鼠标左键 在新标签页打开窗口
#IfWinActive .*- Google Chrome$ 
!LButton::
    Send, {CtrlDown}
    MouseClick, left, 0, 0, 1, 0, , R
    Send, {CtrlUp}
    return
#IfWinActive


; Chrome 中, 模拟 Command + Shift + C 审查元素
#IfWinActive .*- Google Chrome$ 
!#c::
    Send, ^!c
    return
#IfWinActive


;============================================;
;                  特判结束                   ;
;============================================;

; 模拟 Command + 字母
    !a::
        Send, ^a
        return
    !b::
        Send, ^b
        return
    !c::
        Send, ^c
        return
    !d::
        Send, ^d
        return
    !e::
        Send, ^e
        return
    !f::
        Send, ^f
        return
    !g::
        Send, ^g
        return
    !h::
        Send, ^h
        return
    !i::
        Send, ^i
        return
    !j::
        Send, ^j
        return
    !k::
        Send, ^k
        return
    !l::
        Send, ^l
        return
    !m::
        Send, ^m
        return
    !n::
        Send, ^n
        return
    !o::
        Send, ^o
        return
    !p::
        Send, ^p
        return
    !q::
        Send, ^q
        return
    !r::
        Send, ^r
        return
    !s::
        Send, ^s
        return
    !t::
        Send, ^t
        return
    !u::
        Send, ^u
        return
    !v::
        Send, ^v
        return
    !w::
        Send, ^w
        return
    !x::
        Send, ^x
        return
    !y::
        Send, ^y
        return
    !z::
        Send, ^z
        return


; 模拟 Command + Shift + 字母
    !+a::
        Send, ^+a
        return
    !+b::
        Send, ^+b
        return
    !+c::
        Send, ^+c
        return
    !+d::
        Send, ^+d
        return
    !+e::
        Send, ^+e
        return
    !+f::
        Send, ^+f
        return
    !+g::
        Send, ^+g
        return
    !+h::
        Send, ^+h
        return
    !+i::
        Send, ^+i
        return
    !+j::
        Send, ^+j
        return
    !+k::
        Send, ^+k
        return
    !+l::
        Send, ^+l
        return
    !+m::
        Send, ^+m
        return
    !+n::
        Send, ^+n
        return
    !+o::
        Send, ^+o
        return
    !+p::
        Send, ^+p
        return
    !+q::
        Send, ^+q
        return
    !+r::
        Send, ^+r
        return
    !+s::
        Send, ^+s
        return
    !+t::
        Send, ^+t
        return
    !+u::
        Send, ^+u
        return
    !+v::
        Send, ^+v
        return
    !+w::
        Send, ^+w
        return
    !+x::
        Send, ^+x
        return
    !+y::
        Send, ^+y
        return
    !+z::
        Send, ^+z
        return


; 模拟 Command + 数字键
    !0::
        Send, ^0
        return
    !1::
        Send, ^1
        return
    !2::
        Send, ^2
        return
    !3::
        Send, ^3
        return
    !4::
        Send, ^4
        return
    !5::
        Send, ^5
        return
    !6::
        Send, ^6
        return
    !7::
        Send, ^7
        return
    !8::
        Send, ^8
        return
    !9::
        Send, ^9
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

; 模拟 Command + ,  (设置)
    !,::
        Send, ^,
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


; 模拟 Command + Shift + 4 截屏 (需要在 截图.app 中允许用这个键进行截图)
    !+4::
        Send, {PrintScreen}


