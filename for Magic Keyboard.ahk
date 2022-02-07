;===========================================;
;   ! = ALT  (OPTION)
;   ^ = CTRL
;   + = SHIFT
;   # = WIN  (COMMAND)
; 
;   ⌘ ⌥ ⌃ ⇧ ⌫ ⌦ ⏎ ⎋ ⇥ ⇪ ↑ ↓ ← → 
;
;   注: 需要在系统中禁用掉 Win 键的部分快捷键. (http://www.xitongzhijia.net/xtjc/20170112/90736.html)
;===========================================;

; run script as admin (reload if not as admin) 
if not A_IsAdmin  {    
    Run *RunAs "%A_ScriptFullPath%"     
    ExitApp
}

SetTitleMatchMode RegEx     ; 使用正则匹配模式  (这个似乎必须放在最顶上才生效, 没仔细研究原因)

;===========================================;
;          特殊情况的特判请放在这里         
;===========================================;
#IfWinActive .*- Microsoft​ Edge$ 
#n::SendInput ^{t}
#IfWinActive .*- Google Chrome$ 
#n::SendInput ^{t}                      ; ⌘ N: 新建标签页 (ctrl + T)
#!c::SendInput ^!{c}                    ; ⌘ ⇧ C: 审查元素
#!i::SendInput {F12}                    ; ⌘ ⇧ I: 开发者工具
#!f::SendInput ^{l}                     ; ⌘ ⌥ F: 跳到地址栏
#+[::SendInput ^+{Tab}                  ; ⌘ ⇧ [: 跳到左邻标签页
#+]::SendInput ^{Tab}                   ; ⌘ ⇧ ]: 跳到右邻标签页
#y::SendInput ^{h}                      ; ⌘ Y: 显示历史记录
#IfWinActive, ahk_exe explorer.exe
#+z::SendInput ^{y}                     ; ⌘ ⇧ Z: 重做 (ctrl + Y)
#BackSpace::SendInput {Delete}          ; ⌘ ⌫: 删除
#i::SendInput !{Enter}                  ; ⌘ I: 显示文件属性 (Win 上 Alt+鼠标双击 也很方便!)
#[::SendInput !{Left}                   ; ⌘ [: 返回上一个文件夹
#]::SendInput !{Right}                  ; ⌘ ]: 前进到下一文件夹
#IfWinActive, ahk_exe webstorm64.exe
; #p::SendInput !{p}                     ; ⌘ P: 映射为 Alt+P 用于提示函数参数. 否则会和 "Up" 的 Ctrl+P 冲突.    ; 算了, 因为 Ctrl+N 是新建文档, 还要倒腾很多, 太麻烦.
#IfWinActive, ahk_exe pycharm64.exe
; #p::SendInput !{p}                     ; ⌘ P: 映射为 Alt+P 用于提示函数参数. 否则会和 "Up" 的 Ctrl+P 冲突.
#IfWinActive, ahk_exe wps.exe
#1::SendInput ^{r}
#2::SendInput ^{F3}
#3::SendInput !{r}
#4::SendInput !{3}
#Enter::SendInput +{F5}
#IfWinActive
;===========================================;
;                 特判结束                  
;===========================================;




;===========================================;
;               方向键操作光标 
;===========================================;
#Left::SendInput {Home}                     ; ⌘ ←
#Right::SendInput {End}                     ; ⌘ →
#Up::SendInput {PgUp}                       ; ⌘ ↑
#Down::SendInput {PgDn}                     ; ⌘ ↓
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



;===========================================;
;                    ⌘
;===========================================;
; 这一段都用 Hook 是因为: 比如我想用 Capslock+D 显示桌面, 那我会写成 Send #{d},
; 如果这里不用 Hook, 就会导致实际发送的是重载后的 ^d. 参见 https://www.autoahk.com/archives/11773
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
#q::SendInput !{F4}         ; ⌘ Q: 关闭窗口
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

; ⌘ 左键
$#LButton::                                 
    Send, {CtrlDown}
    MouseClick, left, 0, 0, , , , R
    While (True) {
        if (!getKeyState("LWin", "P")) {
            break
        }
        if (getKeyState(1, "P")) {
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
        if (getKeyState("W", "P")) {
            SendInput ^{w} 
            break 
        }
        if (getKeyState("S", "P")) {
            SendInput ^{s} 
            break 
        }
    }
    Send, {CtrlUp}      ; 为了解决松开 Win 键的时候会触发开始菜单的问题, 使用 Keywait, 利用 ctrl+Win 不会触发菜单的特性. 直到 Win 松开, 或者按下了别的快捷键, 才松开 Ctrl.
    ; 这里需要指出, 上述的一堆判断仅对 Cmd+左键 后按下的第一组快捷键奏效, 之后的快捷键就是走的正常 ahk 映射. 因为特性是: 按过 Cmd+XXX 之后, 再弹起 Cmd 时就不会触发 Windows菜单.
    return              ; 这个 return 非常重要, 否则会触发下面的 !Space. 远离暂时未知 (事实上就是我不知道 return 是干啥的, 以及脚本的执行原理)


; ⌘ 其它
LWin::return                                ; ⌘ (本来想模拟按住 Ctrl, 但好像做不到...)
#IfWinActive, ahk_exe SearchHost 
#Space::SendInput {Esc} 
#IfWinActive
#Space::SendInput {LWin}                    ; ⌘ Space: 模拟 Spotlight 搜索
#/::SendInput ^/                            ; ⌘ /: 注释
#,::SendInput ^,                            ; ⌘ ,: 设置
#.::SendInput ^.                            ; ⌘ .:
Lwin & Tab::AltTab                          ; ⌘ Tab: 切换窗口
Lwin & `::ShiftAltTab                       ; ⌘ `: 向左切换窗口 (这里实现得不好, 因为这个键还有同应用内切换的功能. 不过 win 上应该不能实现, AHK 对 AltTab 的支持似乎不好(参见手册))
#=::SendInput ^{=}                          ; ⌘ =: 放大
#-::SendInput ^{-}                          ; ⌘ -: 缩小
#+=::SendInput ^+{=}                        ; ⌘ +: 放大
#+-::SendInput ^+{-}                        ; ⌘ _: 缩小
#WheelUp::SendInput ^{=}                    ; 滚轮向上: 放大
#WheelDown::SendInput ^{-}                  ; 滚轮向下: 缩小    
#Enter::SendInput ^{Enter}                  ; ⌘ ⏎: 比如 Typora 的表格新行



;===========================================;
;                   ⌘ ⇧
;===========================================;
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



;===========================================;
;                   ⌘ ⌥
;===========================================;
; ⌘ ⌥ A-Z
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
#!Enter::SendInput ^!{Enter}                                                    ; 配合 AquaSnap
#!Left::SendInput ^!{Left}^!{Left}^!{Left}                                      ;  实现类似 Magnet 的窗口管理.
#!Right::SendInput ^!{Right}^!{Right}^!{Right}                                  ; 这里多发送几次, ζ
#!Up::SendInput {CtrlDown}{AltDown} {Up} {CtrlUp}{AltUp}                        ;  是因为 AquaSnap
#!Down::SendInput {CtrlDown}{AltDown} {Down} {CtrlUp}{AltUp}                    ;   并不像 Magnet 那样一步到位..
#![::^![                                                                        ; ⌘ ⌥ [
#!]::^!]                                                                        ; ⌘ ⌥ ]
$#!Space::SendInput #!{Space}                                                   ; ⌘ ⌥ Space: 打开 / 关闭 Everything.app  (这个快捷键直接在 Everything 里设置即可, 这里仅用于占位)
#!Esc::Run taskmgr                                                              ; ⌘ ⌥ Esc: 强制退出程序 (打开任务管理器hhh)


;===========================================;
;                   ⌘ ⌃
;===========================================;
; ⌘ ⌃ A-Z
#^a::return 
#^b::return 
#^c::return 
#^d::return
#^e::return 
#^f::return 
#^g::return 
#^h::return 
#^i::return 
#^j::return 
#^k::return 
#^l::return 
#^m::return 
#^n::return 
#^o::return 
#^p::return 
#^q::return
#^r::return 
#^s::return 
#^t::return 
#^u::return 
#^v::return 
#^w::return 
#^x::return 
#^y::return 
#^z::return 

; ⌘ ⌃ 0-9
#^0::return 
#^1::return                 
#^2::return 
#^3::return 
#^4::return 
#^5::return 
#^6::return 
#^7::return
#^8::return 
#^9::return 

; ⌘ ⌃ 其它   


;===========================================;
;                  Capslock
;===========================================;
Capslock & a::return
Capslock & b::return
Capslock & c::return
Capslock & d::Send #{d}               ; 返回桌面 (不知道为啥失效了...)
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
Capslock & r::return
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
CapsLock & Tab::#Tab            ; 切换桌面


;===========================================;
;                   Miscs.
;===========================================;
; ⇧ Space
+Space::SendInput {Space}



;===========================================;
;          基于 ⌥ [⇧] 的快捷输入
;===========================================;
#UseHook On
!a::SendInput α
!b::SendInput β
!c::SendInput χ
!d::SendInput δ
!e::SendInput η
!f::SendInput φ
!g::SendInput γ
!h::SendInput ˙
!i::SendInput ∈
!j::SendInput ∆
!k::SendInput ˚
!l::SendInput λ
!m::SendInput μ
!n::SendInput ν
!o::SendInput ω
!p::SendInput π
!q::SendInput œ
!r::SendInput ρ
!s::SendInput σ
!t::SendInput θ
!u::SendInput ∪
!v::SendInput √
!w::SendInput ψ
!x::SendInput ξ
!y::SendInput ¥
!z::SendInput ζ

!+a::SendInput A
!+b::SendInput ı
!+c::SendInput Ç
!+d::SendInput Δ
!+e::SendInput ∃
!+f::SendInput ∀
!+g::SendInput Γ
!+h::SendInput Ó
!+i::SendInput ∫
!+j::SendInput Ô
!+k::SendInput 
!+l::SendInput Λ
!+m::SendInput Â
!+n::SendInput ˜
!+o::SendInput Ω
!+p::SendInput Π
!+q::SendInput Œ
!+r::SendInput ‰
!+s::SendInput Σ
!+t::SendInput Θ
!+u::SendInput ∩
!+v::SendInput ◊
!+w::SendInput ∑
!+x::SendInput ≈
!+y::SendInput Á
!+z::SendInput ¸

!0::SendInput ∅
!2::SendInput ²
!3::SendInput ε
!5::SendInput ∞
!6::SendInput ∂
!8::SendInput •

!+8::SendInput ×

!\::SendInput 、
!-::SendInput –
!+[::SendInput ｢
!+]::SendInput ｣
!+-::SendInput —
!=::SendInput ≠
!+=::SendInput ±
!,::SendInput ≤
!.::SendInput ≥
!+,::SendInput 《
!+.::SendInput 》
!/::SendInput ÷
![::SendInput 【
!]::SendInput 】
#UseHook Off

;===========================================;
;                短语展开
;===========================================;
; 日期展开
:*:=cd::
::\cd::
    FormatTime, TimeString, , yyyy-MM-dd
    SendInput, %TimeString%
    return

:*:=ct::
::\ct::
    FormatTime, TimeString, , yyyy-MM-dd(HH.mm.ss)
    SendInput, %TimeString%
    return

; Emoji
:*:=check::
::\check::
    SendInput ✔️
    return

:*:=cross::
::\cross::
    SendInput ❌
    return
