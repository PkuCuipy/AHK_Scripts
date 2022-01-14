;=========================;
;   ! = ALT  (OPTION)
;   ^ = CTRL
;   + = SHIFT
;   # = WIN  (COMMAND)
;=========================;

SetTitleMatchMode RegEx     ; 使用正则匹配模式  (这个似乎必须放在最顶上才生效, 没仔细研究原因)

;============================================;
;            特殊情况的特判请放在这里         
;============================================;
#IfWinActive .*- Microsoft​ Edge$ 
#n::Send ^t
#IfWinActive .*- Google Chrome$ 
#n::Send ^t         ; Command + N 在浏览器应表现为新建标签页 (ctrl + T)
#!c::Send ^!c       ; 模拟 Command + Shift + C 审查元素
#!i::Send {F12}     ; 模拟 Command + Shift + I 打开开发者工具
#LButton::          ; 模拟 Cmd + 鼠标左键 在新标签页打开窗口
    Send {CtrlDown}
    MouseClick, left, 0, 0, 1, 0, , R
    Send {CtrlUp}
#IfWinActive
;============================================;
;                  特判结束                  
;============================================;


; ⌘ A-Z
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
LWin::Send {Blind}{vk07}                    ; 禁用 Windows 键的菜单弹出
#BackSpace:: SendInput {Home}{BackSpace}    ; ⌘ BackSpace: 删除光标左边内容
#IfWinActive, ahk_exe SearchHost            ; ⌘ Soace: 模拟 Spotlight 搜索
    #Space::SendInput {Esc} 
    #IfWinActive
    #Space::SendInput #s 
#/::SendInput ^/                            ; ⌘ /: 注释
#,::SendInput ^,                            ; ⌘ ,: 设置
Lwin & Tab::AltTab                          ; ⌘ Tab: 切换窗口
Lwin & `::ShiftAltTab                       ; ⌘ `: 向左切换窗口 (这里实现得不好, 因为这个键还有同应用内切换的功能. 不过 win 上应该不能实现.)


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
#+4::SendInput Send {PrintScreen}     ; ⌘ ⇧ 4: 截屏
#+5::SendInput ^+{5} 
#+6::SendInput ^+{6} 
#+7::SendInput ^+{7} 
#+8::SendInput ^+{8} 
#+9::SendInput ^+{9} 


; 方向键操作光标
#Left::SendInput {Home}         ; ⌘ ←
#Right::SendInput {End}         ; ⌘ →
!Up::SendInput {PgUp}           ; ⌘ ↑
!Down::SendInput {PgDn}         ; ⌘ ↓
!Left::SendInput ^{Left}        ; ⌥ ←
!Right::SendInput ^{Right}      ; ⌥ →
!+Left::SendInput ^+{Left}      ; ⌥ ⇧ ←
!+Right::SendInput ^+{Right}    ; ⌥ ⇧ →
#+Left::SendInput +{Home}       ; ⌘ ⇧ ←
#+Right::SendInput +{End}       ; ⌘ ⇧ →
!+Up::SendInput +{PgUp}         ; ⌘ ⇧ ↑
!+Down::SendInput +{PgDn}       ; ⌘ ⇧ ↓

