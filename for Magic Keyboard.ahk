;=========================;
;   ! = ALT  (OPTION)
;   ^ = CTRL
;   + = SHIFT
;   # = WIN  (COMMAND)
; 
;   ⌘ ⌥ ⌃ ⇧ ⌫ ⌦ ⏎ ⎋ ⇥ ⇪ ↑ ↓ ← → 
;=========================;

SetTitleMatchMode RegEx     ; 使用正则匹配模式  (这个似乎必须放在最顶上才生效, 没仔细研究原因)

;============================================;
;            特殊情况的特判请放在这里         
;============================================;
#IfWinActive .*- Microsoft​ Edge$ 
#n::Send ^t
#IfWinActive .*- Google Chrome$ 
#n::Send ^t                             ; ⌘ N: 新建标签页 (ctrl + T)
#!c::Send ^!c                           ; ⌘ ⇧ C: 审查元素
#!i::Send {F12}                         ; ⌘ ⇧ I: 开发者工具
#IfWinActive, ahk_exe explorer.exe
#+z::SendInput ^{y}                     ; ⌘ ⇧ Z: 重做 (ctrl + Y)
$#BackSpace::SendInput {Delete}         ; ⌘ ⌫: 删除
#IfWinActive, ahk_exe webstorm64.exe
$#BackSpace::SendInput ^{BackSpace}     ; ⌘ ⌫: 映射为 ⌃⌫ 交给 WebStorm 自己处理
#IfWinActive
;============================================;
;                  特判结束                  
;============================================;

; 方向键操作光标
#Left::SendInput {Home}                     ; ⌘ ←
#Right::SendInput {End}                     ; ⌘ →
!Up::SendInput {PgUp}                       ; ⌘ ↑
!Down::SendInput {PgDn}                     ; ⌘ ↓
!Left::SendInput ^{Left}                    ; ⌥ ←
!Right::SendInput ^{Right}                  ; ⌥ →
!+Left::SendInput ^+{Left}                  ; ⌥ ⇧ ←
!+Right::SendInput ^+{Right}                ; ⌥ ⇧ →
#+Left::SendInput +{Home}                   ; ⌘ ⇧ ←
#+Right::SendInput +{End}                   ; ⌘ ⇧ →
!+Up::SendInput +{PgUp}                     ; ⌘ ⇧ ↑
!+Down::SendInput +{PgDn}                   ; ⌘ ⇧ ↓
#BackSpace:: SendInput +{Home}{BackSpace}   ; ⌘ BackSpace: 删除光标左边全部内容
!BackSpace:: SendInput +^{Left}{BackSpace}  ; ⌥ BackSpace: 删除光标左边一个词


; ⌘ A-Z
#UseHook, On
#a::SendInput ^{a} 
#b::SendInput ^{b} 
#c::SendInput ^{c} 
#d::SendInput ^{d}
#e::SendInput ^{e} 
#f::SendInput ^{f} 
#g::SendInput ^{g} 
#h::SendInput ^{h} 
#i::SendInput ^{i} 
#j::SendInput ^{j} 
#k::SendInput ^{k} 
#l::SendInput ^{l} 
#m::SendInput ^{m} 
#n::SendInput ^{n} 
#o::SendInput ^{o} 
#p::SendInput ^{p} 
#q::Send !{F4}         ; ⌘ Q: 关闭窗口
#r::SendInput ^{r} 
#s::SendInput ^{s} 
#t::SendInput ^{t} 
#u::SendInput ^{u} 
#v::SendInput ^{v} 
#w::SendInput ^{w} 
#x::SendInput ^{x} 
#y::SendInput ^{y} 
#z::SendInput ^{z} 
#UseHook, Off

; ⌘ 0-9
#0::SendInput ^{0} 
#1::SendInput ^{1} 
#2::SendInput ^{2} 
#3::SendInput ^{3} 
#4::SendInput ^{4} 
#5::SendInput ^{5} 
#6::SendInput ^{6} 
#7::SendInput ^{7}
#8::SendInput ^{8} 
#9::SendInput ^{9} 

; ⌘ 其它
LWin::return
$#LButton::                                 ; ⌘ 左键
    Send, {CtrlDown}
    MouseClick, left, 0, 0, , , , R
    While (True) {
        if (!getKeyState("LWin", "P")) {
            break
        }
        if (getKeyState("1", "P")) {
            SendInput ^{1} 
            break 
        }
        if (getKeyState("2", "P")) {
            SendInput ^{2} 
            break 
        }
        if (getKeyState("3", "P")) {
            SendInput ^{3} 
            break 
        }
        if (getKeyState("4", "P")) {
            SendInput ^{4} 
            break 
        }
        if (getKeyState("5", "P")) {
            SendInput ^{5} 
            break 
        }
        if (getKeyState("6", "P")) {
            SendInput ^{6}
            break 
        }
        if (getKeyState("7", "P")) {
            SendInput ^{7} 
            break 
        }
        if (getKeyState("8", "P")) {
            SendInput ^{8} 
            break 
        }
        if (getKeyState("9", "P")) {
            SendInput ^{9} 
            break 
        }
        if (getKeyState("a", "P")) {
            SendInput ^{a} 
            break 
        }
        if (getKeyState("b", "P")) {
            SendInput ^{b} 
            break 
        }
        if (getKeyState("c", "P")) {
            SendInput ^{c} 
            break 
        }
        if (getKeyState("d", "P")) {
            SendInput ^{d} 
            break 
        }
        if (getKeyState("e", "P")) {
            SendInput ^{e} 
            break 
        }
        if (getKeyState("f", "P")) {
            SendInput ^{f} 
            break 
        }
        if (getKeyState("g", "P")) {
            SendInput ^{g} 
            break 
        }
        if (getKeyState("h", "P")) {
            SendInput ^{h} 
            break 
        }
        if (getKeyState("i", "P")) {
            SendInput ^{i} 
            break 
        }
        if (getKeyState("j", "P")) {
            SendInput ^{j} 
            break 
        }
        if (getKeyState("k", "P")) {
            SendInput ^{k} 
            break 
        }
        if (getKeyState("l", "P")) {
            SendInput ^{l} 
            break 
        }
        if (getKeyState("m", "P")) {
            SendInput ^{m} 
            break 
        }
        if (getKeyState("n", "P")) {
            SendInput ^{n} 
            break 
        }
        if (getKeyState("o", "P")) {
            SendInput ^{o} 
            break 
        }
        if (getKeyState("p", "P")) {
            SendInput ^{p} 
            break 
        }
        if (getKeyState("q", "P")) {
            SendInput ^{q} 
            break 
        }
        if (getKeyState("r", "P")) {
            SendInput ^{r} 
            break 
        }
        if (getKeyState("s", "P")) {
            SendInput ^{s} 
            break 
        }
        if (getKeyState("t", "P")) {
            SendInput ^{t} 
            break 
        }
        if (getKeyState("u", "P")) {
            SendInput ^{u} 
            break 
        }
        if (getKeyState("v", "P")) {
            SendInput ^{v} 
            break 
        }
        if (getKeyState("w", "P")) {
            SendInput ^{w} 
            break 
        }
        if (getKeyState("x", "P")) {
            SendInput ^{x} 
            break 
        }
        if (getKeyState("y", "P")) {
            SendInput ^{y} 
            break 
        }
        if (getKeyState("z", "P")) {
            SendInput ^{z} 
            break 
        }
    }
    Send, {CtrlUp}      ; 为了解决松开 Win 键的时候会触发开始菜单的问题, 使用 Keywait, 利用 ctrl+Win 不会触发菜单的特性. 直到 Win 松开, 或者按下了别的快捷键, 才松开 Ctrl.
    

#IfWinActive, ahk_exe SearchHost            ; ⌘ Space: 模拟 Spotlight 搜索
#Space::SendInput {Esc} 
#IfWinActive
#Space::SendInput {LWin}
#/::SendInput ^/                            ; ⌘ /: 注释
#,::SendInput ^,                            ; ⌘ ,: 设置
#.::SendInput ^.                            ; ⌘ .:
Lwin & Tab::AltTab                          ; ⌘ Tab: 切换窗口
Lwin & `::ShiftAltTab                       ; ⌘ `: 向左切换窗口 (这里实现得不好, 因为这个键还有同应用内切换的功能. 不过 win 上应该不能实现.)
#=::SendInput ^{=}                          ; ⌘ =: 放大
#+=::SendInput ^+{=}                        ; ⌘ +: 放大
#-::SendInput ^{-}                          ; ⌘ -: 缩小
#+-::SendInput ^+{-}                        ; ⌘ _: 缩小
#WheelUp::SendInput ^+{=}                   ; 滚轮向上: 放大
#WheelDown::SendInput ^{-}                  ; 滚轮向下: 缩小



; ⌘ ⇧ A-Z
#+a::SendInput ^+{a} 
#+b::SendInput ^+{b} 
#+c::SendInput ^+{c} 
#+d::SendInput ^+{d} 
#+e::SendInput ^+{e} 
#+f::SendInput ^+{f} 
#+g::SendInput ^+{g} 
#+h::SendInput ^+{h} 
#+i::SendInput ^+{i}  
#+j::SendInput ^+{j} 
#+k::SendInput ^+{k} 
#+l::SendInput ^+{l} 
#+m::SendInput ^+{m} 
#+n::SendInput ^+{n} 
#+o::SendInput ^+{o} 
#+p::SendInput ^+{p} 
#+q::SendInput ^+{q} 
#+r::SendInput ^+{r} 
#+s::SendInput ^+{s} 
#+t::SendInput ^+{t} 
#+u::SendInput ^+{u} 
#+v::SendInput ^+{v} 
#+w::SendInput ^+{w} 
#+x::SendInput ^+{x} 
#+y::SendInput ^+{y} 
#+z::SendInput ^+{z} 

; ⌘ ⇧ 0-9
#+0::SendInput ^+{0} 
#+1::SendInput ^+{1} 
#+2::SendInput ^+{2} 
#+3::SendInput ^+{3} 
#+4::SendInput {PrintScreen}     ; ⌘ ⇧ 4: 截屏
#+5::SendInput ^+{5} 
#+6::SendInput ^+{6} 
#+7::SendInput ^+{7} 
#+8::SendInput ^+{8} 
#+9::SendInput ^+{9} 

; ⌘ ⇧ 其它
#+[::SendInput ^+{[} 
#+]::SendInput ^+{]} 






; ⌘ ⌥ A-Z
#UseHook, On
#!a::SendInput ^!{a} 
#!b::SendInput ^!{b} 
#!c::SendInput ^!{c} 
#!d::SendInput ^!{d}
#!e::SendInput ^!{e} 
#!f::SendInput ^!{f} 
#!g::SendInput ^!{g} 
#!h::SendInput ^!{h} 
#!i::SendInput ^!{i} 
#!j::SendInput ^!{j} 
#!k::SendInput ^!{k} 
#!l::SendInput ^!{l} 
#!m::SendInput ^!{m} 
#!n::SendInput ^!{n} 
#!o::SendInput ^!{o} 
#!p::SendInput ^!{p} 
#!q::SendInput ^!{q}
#!r::SendInput ^!{r} 
#!s::SendInput ^!{s} 
#!t::SendInput ^!{t} 
#!u::SendInput ^!{u} 
#!v::SendInput ^!{v} 
#!w::SendInput ^!{w} 
#!x::SendInput ^!{x} 
#!y::SendInput ^!{y} 
#!z::SendInput ^!{z} 
#UseHook, Off

; ⌘ ⌥ 0-9
#!0::SendInput ^!{0} 
#!1::SendInput ^!{1}                 
#!2::SendInput ^!{2} 
#!3::SendInput ^!{3} 
#!4::SendInput ^!{4} 
#!5::SendInput ^!{5} 
#!6::SendInput ^!{6} 
#!7::SendInput ^!{7}
#!8::SendInput ^!{8} 
#!9::SendInput ^!{9} 

; ⌘ ⌥ 其它   
#!Up::Send {CtrlDown}{AltDown} {Up} {CtrlUp}{AltUp}             ; 配合 AquaSnap 实现类似 Magnet 的窗口管理
#!Down::Send {CtrlDown}{AltDown} {Down} {CtrlUp}{AltUp}         ; 多发送几次, 因为 AquaSnap 并不一步到位 ..
#!Left::Send {CtrlDown}{AltDown} {Left}{Left}{Left} {CtrlUp}{AltUp}     
#!Right::Send {CtrlDown}{AltDown} {Right}{Right}{Right} {CtrlUp}{AltUp}
#!Enter::Send ^!{Enter}
  





; Capslock 作为超级键
Capslock & a::return
Capslock & b::return
Capslock & c::return
Capslock & d::Send #{d}               ; 返回桌面
Capslock & e::return
Capslock & f::return
Capslock & g::return
Capslock & h::return
Capslock & i::return
Capslock & j::return
Capslock & k::return
Capslock & l::return
Capslock & m::return
Capslock & n::return
Capslock & o::return
Capslock & p::return
Capslock & q::return
Capslock & r::#r                ; 运行
Capslock & s::return
Capslock & t::return
Capslock & u::return
Capslock & v::return
Capslock & w::return
Capslock & x::return
Capslock & y::return
Capslock & z::return
Capslock & 0::return
Capslock & 1::return
Capslock & 2::return
Capslock & 3::return
Capslock & 4::return
Capslock & 5::return
Capslock & 6::return
Capslock & 7::return
Capslock & 8::return
Capslock & 9::return
CapsLock & -::^+!-              ; 亮度-- (配合 Monitorian)
CapsLock & =::^+!=              ; 亮度++ (配合 Monitorian)
CapsLock & F10::Volume_Mute     ; 静音
CapsLock & F11::Volume_Down     ; 音量--
CapsLock & F12::Volume_Up       ; 音量++


; ⇧ Space
+Space::SendInput {Space}
