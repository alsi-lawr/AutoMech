SendMode Input
global shell := ComObjCreate("Shell.Application")

global envVars := {}
PlayKeySound(key) {
    global SOUNDPACK_DIR, AUDIO_EXT, FFPLAY_PATH, SOUNDPACK_NAME
    soundFile := SOUNDPACK_DIR . SOUNDPACK_NAME . key . AUDIO_EXT
    if (FileExist(soundFile)) {
        shell.ShellExecute(FFPLAY_PATH, "-nodisp -autoexit """ soundFile """", "", "open", 0)
    }
}

GetEnvVariables(config, envFilePath)
{
    envVars := {}
    if !FileExist(envFilePath)
    {
        MsgBox, .env file not found!
        return
    }

    FileRead, envFileContent, %envFilePath%

    Loop, Parse, envFileContent, `n, `r
    {
        if (A_LoopField = "" || !InStr(A_LoopField, "="))
            continue

        StringSplit, keyValuePair, A_LoopField, =
        key := Trim(keyValuePair1)
        value := Trim(keyValuePair2)
        if (config.HasKey(key)){
            envVars[key] := StrReplace(StrReplace(value, """"), "'")
        }
    }

    return envVars
}

LoadEnvVariables()
{
    global envVars
    if(envVars.MaxIndex() > 0) ; Already loaded
    {
      return
    }
    ; Call the function to load variables
    envFilePath := ".env"
    config := { "SOUNDPACK_DIR": "", "AUDIO_EXT": "", "FFPLAY_PATH": "", "SOUNDPACK_NAME": "" }
    envVars := GetEnvVariables(config, envFilePath)

    ; Load variables
    global SOUNDPACK_DIR := envVars["SOUNDPACK_DIR"]
    global AUDIO_EXT := envVars["AUDIO_EXT"]
    global FFPLAY_PATH := """" . envVars["FFPLAY_PATH"] . """"
    global SOUNDPACK_NAME := envVars["SOUNDPACK_NAME"]
}

LoadEnvVariables()

; Numbers
*~$1::
    PlayKeySound("2")
    Hotkey, *~$1, Off
return

*~$1 Up::
    Hotkey, *~$1, On
return
*~$2::
    PlayKeySound("3")
    Hotkey, *~$2, Off
return

*~$2 Up::
    Hotkey, *~$2, On
return

*~$3::
    PlayKeySound("4")
    Hotkey, *~$3, Off
return

*~$3 Up::
    Hotkey, *~$3, On
return
*~$4::
    PlayKeySound("5")
    Hotkey, *~$4, Off
return

*~$4 Up::
    Hotkey, *~$4, On
return
*~$5::
    PlayKeySound("6")
    Hotkey, *~$5, Off
return

*~$5 Up::
    Hotkey, *~$5, On
return
*~$6::
    PlayKeySound("7")
    Hotkey, *~$6, Off
return

*~$6 Up::
    Hotkey, *~$6, On
return
*~$7::
    PlayKeySound("8")
    Hotkey, *~$7, Off
return

*~$7 Up::
    Hotkey, *~$7, On
return
*~$8::
    PlayKeySound("9")
    Hotkey, *~$8, Off
return

*~$8 Up::
    Hotkey, *~$8, On
return
*~$9::
    PlayKeySound("10")
    Hotkey, *~$9, Off
return

*~$9 Up::
    Hotkey, *~$9, On
return
*~$0::
    PlayKeySound("11")
    Hotkey, *~$0, Off
return

*~$0 Up::
    Hotkey, *~$0, On
return

; Letters
*~$q::
    PlayKeySound("16")
    Hotkey, *~$q, Off
return

*~$q Up::
    Hotkey, *~$q, On
return
*~$w::
    PlayKeySound("17")
    Hotkey, *~$w, Off
return

*~$w Up::
    Hotkey, *~$w, On
return
*~$e::
    PlayKeySound("18")
    Hotkey, *~$e, Off
return

*~$e Up::
    Hotkey, *~$e, On
return
*~$r::
    PlayKeySound("19")
    Hotkey, *~$r, Off
return

*~$r Up::
    Hotkey, *~$r, On
return
*~$t::
    PlayKeySound("20")
    Hotkey, *~$t, Off
return

*~$t Up::
    Hotkey, *~$t, On
return
*~$y::
    PlayKeySound("21")
    Hotkey, *~$y, Off
return

*~$y Up::
    Hotkey, *~$y, On
return
*~$u::
    PlayKeySound("22")
    Hotkey, *~$u, Off
return

*~$u Up::
    Hotkey, *~$u, On
return
*~$i::
    PlayKeySound("23")
    Hotkey, *~$i, Off
return

*~$i Up::
    Hotkey, *~$i, On
return
*~$o::
    PlayKeySound("24")
    Hotkey, *~$o, Off
return

*~$o Up::
    Hotkey, *~$o, On
return
*~$p::
    PlayKeySound("25")
    Hotkey, *~$p, Off
return

*~$p Up::
    Hotkey, *~$p, On
return

*~$a::
    PlayKeySound("30")
    Hotkey, *~$a, Off
return

*~$a Up::
    Hotkey, *~$a, On
return
*~$s::
    PlayKeySound("31")
    Hotkey, *~$s, Off
return

*~$s Up::
    Hotkey, *~$s, On
return
*~$d::
    PlayKeySound("32")
    Hotkey, *~$d, Off
return

*~$d Up::
    Hotkey, *~$d, On
return
*~$f::
    PlayKeySound("33")
    Hotkey, *~$f, Off
return

*~$f Up::
    Hotkey, *~$f, On
return
*~$g::
    PlayKeySound("34")
    Hotkey, *~$g, Off
return

*~$g Up::
    Hotkey, *~$g, On
return
*~$h::
    PlayKeySound("35")
    Hotkey, *~$h, Off
return

*~$h Up::
    Hotkey, *~$h, On
return
*~$j::
    PlayKeySound("36")
    Hotkey, *~$j, Off
return

*~$j Up::
    Hotkey, *~$j, On
return
*~$k::
    PlayKeySound("37")
    Hotkey, *~$k, Off
return

*~$k Up::
    Hotkey, *~$k, On
return
*~$l::
    PlayKeySound("38")
    Hotkey, *~$l, Off
return

*~$l Up::
    Hotkey, *~$l, On
return

*~$z::
    PlayKeySound("44")
    Hotkey, *~$z, Off
return

*~$z Up::
    Hotkey, *~$z, On
return
*~$x::
    PlayKeySound("45")
    Hotkey, *~$x, Off
return

*~$x Up::
    Hotkey, *~$x, On
return
*~$c::
    PlayKeySound("46")
    Hotkey, *~$c, Off
return

*~$c Up::
    Hotkey, *~$c, On
return
*~$v::
    PlayKeySound("47")
    Hotkey, *~$v, Off
return

*~$v Up::
    Hotkey, *~$v, On
return
*~$b::
    PlayKeySound("48")
    Hotkey, *~$b, Off
return

*~$b Up::
    Hotkey, *~$b, On
return
*~$n::
    PlayKeySound("49")
    Hotkey, *~$n, Off
return

*~$n Up::
    Hotkey, *~$n, On
return
*~$m::
    PlayKeySound("50")
    Hotkey, *~$m, Off
return

*~$m Up::
    Hotkey, *~$m, On
return

; Special keys
*~$Backspace::
    PlayKeySound("14")
    Hotkey, *~$Backspace, Off
return

*~$Backspace Up::
    Hotkey, *~$Backspace, On
return

*~$Space::
    PlayKeySound("57")
    Hotkey, *~$Space, Off
return

*~$Space Up::
    Hotkey, *~$Space, On
return

*~$Ins::
    PlayKeySound("15")
    Hotkey, *~$Ins, Off
return

*~$Ins Up::
    Hotkey, *~$Ins, On
return

*~$PgDn::
    PlayKeySound("15")
    Hotkey, *~$PgDn, Off
return

*~$PgDn Up::
    Hotkey, *~$PgDn, On
return

*~$PgUp::
    PlayKeySound("15")
    Hotkey, *~$PgUp, Off
return

*~$PgUp Up::
    Hotkey, *~$PgUp, On
return

*~$End::
    PlayKeySound("15")
    Hotkey, *~$End, Off
return

*~$End Up::
    Hotkey, *~$End, On
return

*~$Home::
    PlayKeySound("15")
    Hotkey, *~$Home, Off
return

*~$Home Up::
    Hotkey, *~$Home, On
return

*~$Tab::
    PlayKeySound("15")
    Hotkey, *~$Tab, Off
return

*~$Tab Up::
    Hotkey, *~$Tab, On
return
*~$Enter::
    PlayKeySound("28")
    Hotkey, *~$Enter, Off
return

*~$Enter Up::
    Hotkey, *~$Enter, On
return
*~$Shift::
    PlayKeySound("42")  ; Left Shift
    Hotkey, *~$Shift, Off
return

*~$Shift Up::
    Hotkey, *~$Shift, On
return
*~$Alt::
    PlayKeySound("56")    ; Left Alt
    Hotkey, *~$Alt, Off
return

*~$Alt Up::
    Hotkey, *~$Alt, On
return
*~$Ctrl::
    PlayKeySound("29")   ; Left Control
    Hotkey, *~$Ctrl, Off
return

*~$Ctrl Up::
    Hotkey, *~$Ctrl, On
return
*~$CapsLock::
    PlayKeySound("58")
    Hotkey, *~$CapsLock, Off
return

*~$CapsLock Up::
    Hotkey, *~$CapsLock, On
return
*~$Esc::
    PlayKeySound("1")
    Hotkey, *~$Esc, Off
return

*~$Esc Up::
    Hotkey, *~$Esc, On
return

; Arrows
*~$Up::
    PlayKeySound("57416")
    Hotkey, *~$Up, Off
return

*~$Up Up::
    Hotkey, *~$Up, On
return
*~$Down::
    PlayKeySound("57424")
    Hotkey, *~$Down, Off
return

*~$Down Up::
    Hotkey, *~$Down, On
return
*~$Left::
    PlayKeySound("57419")
    Hotkey, *~$Left, Off
return

*~$Left Up::
    Hotkey, *~$Left, On
return
*~$Right::
    PlayKeySound("57421")
    Hotkey, *~$Right, Off
return

*~$Right Up::
    Hotkey, *~$Right, On
return

; Function keys
*~$F1::
    PlayKeySound("59")
    Hotkey, *~$F1, Off
return

*~$F1 Up::
    Hotkey, *~$F1, On
return
*~$F2::
    PlayKeySound("60")
    Hotkey, *~$F2, Off
return

*~$F2 Up::
    Hotkey, *~$F2, On
return
*~$F3::
    PlayKeySound("61")
    Hotkey, *~$F3, Off
return

*~$F3 Up::
    Hotkey, *~$F3, On
return
*~$F4::
    PlayKeySound("62")
    Hotkey, *~$F4, Off
return

*~$F4 Up::
    Hotkey, *~$F4, On
return
*~$F5::
    PlayKeySound("63")
    Hotkey, *~$F5, Off
return

*~$F5 Up::
    Hotkey, *~$F5, On
return
*~$F6::
    PlayKeySound("64")
    Hotkey, *~$F6, Off
return

*~$F6 Up::
    Hotkey, *~$F6, On
return
*~$F7::
    PlayKeySound("65")
    Hotkey, *~$F7, Off
return

*~$F7 Up::
    Hotkey, *~$F7, On
return
*~$F8::
    PlayKeySound("66")
    Hotkey, *~$F8, Off
return

*~$F8 Up::
    Hotkey, *~$F8, On
return
*~$F9::
    PlayKeySound("67")
    Hotkey, *~$F9, Off
return

*~$F9 Up::
    Hotkey, *~$F9, On
return
*~$F10::
    PlayKeySound("68")
    Hotkey, *~$F10, Off
return

*~$F10 Up::
    Hotkey, *~$F10, On
return
*~$F11::
    PlayKeySound("87")
    Hotkey, *~$F11, Off
return

*~$F11 Up::
    Hotkey, *~$F11, On
return
*~$F12::
    PlayKeySound("88")
    Hotkey, *~$F12, Off
return

*~$F12 Up::
    Hotkey, *~$F12, On
return

; Punctuation and other symbols
*~$-::
    PlayKeySound("12")       ; Minus
    Hotkey, *~$-, Off
return

*~$- Up::
    Hotkey, *~$-, On
return
*~$=::
    PlayKeySound("13")       ; Equals
    Hotkey, *~$=, Off
return

*~$= Up::
    Hotkey, *~$=, On
return
*~$[::
    PlayKeySound("26")       ; Left bracket
    Hotkey, *~$[, Off
return

*~$[ Up::
    Hotkey, *~$[, On
return
*~$]::
    PlayKeySound("27")       ; Right bracket
    Hotkey, *~$], Off
return

*~$] Up::
    Hotkey, *~$], On
return
*~$;::
    PlayKeySound("39")       ; Semicolon
    Hotkey, *~$;, Off
return

*~$; Up::
    Hotkey, *~$;, On
return
*~$'::
    PlayKeySound("40")       ; Quote
    Hotkey, *~$', Off
return

*~$' Up::
    Hotkey, *~$', On
return
*~$`::
    PlayKeySound("41")      ; Backquote (`)
    Hotkey, *~$``, Off
return

*~$` Up::
    Hotkey, *~$``, On
return
*~$\::
    PlayKeySound("43")      ; Backslash
    Hotkey, *~$\, Off
return

*~$\ Up::
    Hotkey, *~$\, On
return
*~$,::
    PlayKeySound("51")       ; Comma
    Hotkey, *~$`,, Off
return

*~$, Up::
    Hotkey, *~$`,, On
return
*~$.::
    PlayKeySound("52")       ; Period
    Hotkey, *~$., Off
return

*~$. Up::
    Hotkey, *~$., On
return
*~$/::
    PlayKeySound("53")       ; Slash
    Hotkey, *~$/, Off
return

*~$/ Up::
    Hotkey, *~$/, On
return

; Meta Keys
*~$LWin::
    PlayKeySound("3675")  ; Meta Left
    Hotkey, *~$LWin, Off
return

*~$LWin Up::
    Hotkey, *~$LWin, On
return
*~$RWin::
    PlayKeySound("3676")  ; Meta Right
    Hotkey, *~$RWin, Off
return

*~$RWin Up::
    Hotkey, *~$RWin, On
return
*~$<^>!::
    PlayKeySound("3640") ; Right Alt (AltGr)
    Hotkey, *~$<^>!, Off
return

*~$<^>! Up::
    Hotkey, *~$<^>!, On
return

