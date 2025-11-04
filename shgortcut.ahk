#Requires AutoHotkey v2.0
#SingleInstance Force

; ========================
; CONFIG
global isEnabled := true
global isSound := true
toggleKey := "MButton" ; Scroll Click = toggle
targetApp := "ahk_exe Adobe Premiere Pro.exe"
; ========================

; 🪟 GUI
myGui := Gui("+AlwaysOnTop +ToolWindow -Caption", "Premiere Shortcut")
myGui.BackColor := "232323"
myGui.SetFont("s10 cWhite", "Segoe UI")
myGui.Add("Text", "x15 y10 w200", "🎬 SRVII Trim Controller")

toggleBtn := myGui.Add("Button", "x15 y35 w180 h30", "✅ Enabled")
soundBtn := myGui.Add("Button", "x15 y70 w180 h30", "🔊 Sound: ON")
myGui.Add("Text", "x15 y105 w200 cGray", "Scroll = Toggle | Ctrl+Alt+Q = Exit")

; วางมุมขวาล่าง
myGui.Show("x" (A_ScreenWidth - 240) " y" (A_ScreenHeight - 180) " w220 h130")

; Event ปุ่ม GUI
toggleBtn.OnEvent("Click", (*) => ToggleScript())
soundBtn.OnEvent("Click", (*) => ToggleSound())

; Scroll Click = toggle
Hotkey(toggleKey, (*) => ToggleScript())

#HotIf WinActive(targetApp) && isEnabled

; ปุ่มข้างซ้าย = Trim (Ctrl + K)
XButton1::{
    Send("^k")
    if (isSound) {
        SoundBeep(900, 50)
    }
}

; ปุ่มข้างขวา = Ripple Delete (Shift + Delete)
XButton2::{
    Send("+{Delete}")
    if (isSound) {
        SoundBeep(600, 80)
    }
}

#HotIf

; ========= TOGGLE FUNCTIONS =========
ToggleScript() {
    global isEnabled, toggleBtn, isSound
    isEnabled := !isEnabled
    if (isEnabled) {
        if (isSound) {
            SoundBeep(800, 80)
        }
        TrayTip("✅ Enabled", "Trim / Ripple Mode พร้อมใช้งาน")
        toggleBtn.Text := "✅ Enabled"
        toggleBtn.Opt("cGreen")
    } else {
        if (isSound) {
            SoundBeep(400, 100)
        }
        TrayTip("🛑 Disabled", "ปิดโหมดตัดต่อชั่วคราวแล้ว")
        toggleBtn.Text := "🛑 Disabled"
        toggleBtn.Opt("cRed")
    }
}

ToggleSound() {
    global isSound, soundBtn
    isSound := !isSound
    if (isSound) {
        SoundBeep(1000, 60)
        soundBtn.Text := "🔊 Sound: ON"
        soundBtn.Opt("cWhite")
    } else {
        SoundBeep(300, 80)
        soundBtn.Text := "🔇 Sound: OFF"
        soundBtn.Opt("cGray")
    }
}

; ========= ปิดทั้งหมด =========
^!q::{
    SoundBeep(300, 100)
    TrayTip("👋 Script Closed", "ปิดการทำงานทั้งหมดแล้ว")
    ExitApp
}
