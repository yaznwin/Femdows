eulatx := "
(
End User License Agreement (EULA)
For Furry Femboys and Boykissers™
Version 1.0.0

By accessing, interacting with, or enjoying the Furry Femboy Experience™ (hereafter referred to as “the Experience”), you agree to the following terms and conditions. Failure to comply may result in confiscation of your uwu privileges.
1. Acceptance of Femboy Energy

By clicking “I Agree,” you hereby acknowledge that:
1.1. You are a certified Boykisser™ or are femboy-curious.
1.2. You understand that femboys are valid, cute, and have rights (including but not limited to unlimited head pats and serotonin boosts).
1.3. All boops, meows, and yips are legally binding under this agreement.
2. License to Be Cute

2.1. We grant you a non-exclusive, non-transferable, fully uwu-ified license to:

    Wear thigh highs, skirts, and oversized hoodies.
    Post "nya~" unironically.
    Call others “good boy” in casual or affectionate tones.

2.2. Unauthorized attempts to act “too masc” while using this license will result in temporary revocation of your femboy status. A written apology including at least one "uwu" is required for reinstatement.
3. Kiss Tax Policy

3.1. Every use of this Experience comes with a mandatory Boykisser™ tax. Taxes may include, but are not limited to:

    Blowing kisses.
    Real-life kisses.
    Sharing memes about kissing boys.
    Declaring “I love boys!” on main.

3.2. Users who fail to pay the kiss tax will receive a stern but loving ear flick.
4. Prohibited Activities

The following are strictly forbidden under this agreement:
4.1. Saying “femboys aren’t valid.” This will result in an immediate permanent ban from all soft cuddle piles.
4.2. Disrespecting thigh-high supremacy. Violators will be sentenced to 100 hours of listening to furry EDM playlists.
4.3. Pretending not to enjoy a compliment on your cuteness (we know you like it).
5. Content Ownership

5.1. All user-generated content, such as “owo” and “uwu,” becomes co-owned by the Experience upon creation.
5.2. Artworks of cute boys in maid outfits must be posted to the designated #femboy-fanart channel, where they may be archived for eternity.
6. Limited Liability for Overwhelming Adorableness

6.1. The Experience is not liable for the following side effects:

    Excessive blushing.
    High-pitched “squee” noises.
    Sudden urges to hug boys in cute outfits.

6.2. You agree to accept these risks and embrace the wholesome chaos.
7. Termination

7.1. This license will terminate if you fail to uphold the principles of femboy positivity or engage in unapproved anti-boykisser behavior.
7.2. Upon termination, you must immediately:

    Stop calling yourself a boykisser.
    Return all stolen thigh highs.

8. Dispute Resolution

8.1. All disputes will be resolved via a cuddle-off, judged by a neutral panel of adorable furries.
8.2. Winners get bragging rights and a smooch from the judge.

By agreeing to this EULA, you solemnly swear to spread wholesome femboy energy and kiss boys responsibly. Now go forth, thrive, and remember: Boys Rule. Boykissers Unite.

Click “Accept” to begin your adventure.
)"
intropt1 := "
(
Welcome to Femdows™ Installer!
)"
intropt2 := "
(
        ✨ Soft. Cute. Functional. ✨
    
)"
intropt3 := "
(
    Thank you for choosing the Femdows™ Operating System designed 
    with maximum uwu energy in mind!Whether you’re a seasoned 
    boykisser or just here to vibe with femboy supremacy, 
    Femdows is here to serve all your soft aesthetic and femboy needs.

)"
intropt4 := "
(

⚠️Disclaimer: This installer may cause excessive blushing, 
uncontrollable “uwu”s, or the
realization that femboys are the peak of human evolution.
Proceed with caution and cuteness!

)"

intropt5 := "
(
    Click Next to begin your
    soft and snuggly journey into the world of Femdows!
)"
intropt6 := "
(
        Femdows: Embrace the Fem. Kiss the Boys.
)"

;@Ahk2Exe-SetProductName Fempize Setup Wizard 
;@Ahk2Exe-SetCompanyName Yazn Studios OPC.
;@Ahk2Exe-SetDescription Fempize Setup Wizard - Y.S OPC. & Femsoft Corporation. All rights creampied.
;@Ahk2Exe-SetFileVersion 1.0
;@Ahk2Exe-SetMainIcon C:\Users\yazn\Pictures\Art\SystemStuff\Fempize.ico
#SingleInstance Force

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }catch{
    MsgBox "Failed to run as Administrator`nYou may either not have Administrator rights or have clicked No.","Error","iconx "
    }
    
    exitapp 
}
    
if !DirExist("C:\Users\Public\yaznAHK\") or !DirExist("C:\Users\Public\yaznAHK\Fempize"){
    DirCreate "C:\Users\Public\yaznAHK\"
    DirCreate "C:\Users\Public\yaznAHK\Fempize\"
}
;fileinstall "C:\Users\Public\yaznAHK\Fempize\fempize.zip","C:\Users\Public\yaznAHK\Fempize\fempize.zip",1 ;             include files with the compiled exe
FileInstall "C:\Users\Public\yaznAHK\Fempize\aero_busy.ani","C:\Users\Public\yaznAHK\Fempize\aero_busy.ani",1
FileInstall "C:\Users\Public\yaznAHK\Fempize\Done.ico","C:\Users\Public\yaznAHK\Fempize\Done.ico",1
esc::{
    ExitApp
}
fem := gui("-DPIScale","Fempize setup - Yazn Studios OPC.")
fem.MarginX := 0

unzip("C:\Users\Public\yaznAHK\Fempize\fempize.zip","C:\Users\Public\yaznAHK\Fempize\fempizeRC\")
fempizeinstaller()
Unzip(ZipFile, ExtractTo) { ;             unzip function
    ; Ensure the ZIP file exists
    fem.Opt("-caption 0x400000")
    loadico := fem.AddPicture(,"C:\Users\Public\yaznAHK\Fempize\aero_busy.ani") ; spinny loading cirle
    text := fem.AddText("yp","Extracting")
    prog := fem.AddProgress("xp 0x8","0") 
    prog.Value += 10
    xmove := 190
    moveval := 150
    fem.show("w20 h5")
    loop 40{
    fem.Move(,,,(xmove / 3) - moveval)
    moveval := Round(moveval / 1.25)
    fem.Show("center w" xmove - moveval)
    prog.Value += 10
    sleep 35
    }
    if !FileExist(ZipFile) {
        MsgBox "Could not find setup files!`nFile: C:\Users\Public\yaznAHK\Fempize\fempize.zip`nFemboyizer will now unfortuantly exit.","Awggh!! 3:","0x10"
        return
    }
    ; Create the destination folder if it doesn't exist
    if !FileExist(ExtractTo) {
        DirCreate(ExtractTo)
    }
    
    ; Use Shell.Application to extract the ZIP file
    ComObj := ComObject("Shell.Application") ;             use windows api shit to extract it
    Zip := ComObj.NameSpace(ZipFile)
    Target := ComObj.NameSpace(ExtractTo)

    if !Zip || !Target {
        MsgBox "Error: Failed to initialize Shell.Application or invalid paths.","Awggh!! 3:","0x10"
        return
    }

    ; Extract the contents
    Target.CopyHere(Zip.Items(), 16|4) ; 16 = No confirmation dialogs
 
    ; Optional: Wait until extraction is complete
    while Target.Items().Count < Zip.Items().Count {
        prog.Value += 10
        Sleep 10
    }
    prog.Opt("-0x8")
    prog.Value := 100
    text.Value := "Finished!"
    
    ;loadico.Value "C:\Users\Public\yaznAHK\Fempize\doneEX.ico"
    sleep 500
    loop 40{
        moveval := Round(moveval * 1.25)
        fem.Show("center w" xmove - moveval)
        prog.Value += 10
        prog.Opt("-0x8")
        sleep 30
    }
    fem.Destroy

}
fempizeinstaller(){
    page := 1 ;             FIRST PAGE OF INSTALLER
    fem := gui("","Fempize setup - Yazn Studios OPC.")
    fem.MarginX := 0
    banner := fem.AddPicture("x0 y0","C:\Users\Public\yaznAHK\Fempize\fempizeRC\FempizeSetup.bmp")
    titlebar := fem.AddPicture("x+0 Section","C:\Users\Public\yaznAHK\Fempize\fempizeRC\titlebar.bmp")
    fem.SetFont("bold s14")
    text1 := fem.AddText("xp+7 y+5",intropt1)
    fem.SetFont("s9 norm italic")
    text2 := fem.AddText("y+0",intropt2)
    fem.SetFont("norm")
    text3 := fem.AddText("y+0",intropt3)
    fem.SetFont("bold italic")
    text4 := fem.AddText("y+0",intropt4)
    fem.SetFont("norm")
    text5 := fem.AddText("y+0",intropt5)
    fem.SetFont("norm italic")
    text6 := fem.AddText("y+0",intropt6)
    fem.SetFont("norm")
    btnbg := fem.AddPicture("y277 x164","C:\Users\Public\yaznAHK\Fempize\fempizeRC\buttonbgsprite.bmp")
    fem.AddButton("vnxt x470 y285 Backgroundffa1e0","Next").OnEvent("Click",next)
    fem.AddButton("vexitt x390 y285 Backgroundffa1e0","Exit installer").OnEvent("Click",Exit)
    fem.Show
    xmove := 316
    moveval := 500 
    loop 40{
    ;fem.Move(,,,(xmove / 3) - moveval)
    moveval := Round(moveval / 1.15)
    fem.Show("center h" xmove - moveval)
    sleep 15
  }
  loop 4
    next
  next(*){ ;             next function manages the pages of the installer
    ;page := 2 
    if page = 1{
        text1.Visible := 0
        text2.Visible := 0
        text3.Visible := 0
        text4.Visible := 0
        text5.Visible := 0
        text6.Visible := 0
        fem.SetFont("bold s14")
        maintitle := fem.AddText("vmaintitle xs+5 ys+30 cffa1e0","License and applicable fems >.<") ; main title
        fem.SetFont("norm s9")
        eula := fem.AddEdit("veula Readonly h190 w340",eulatx)
        check := fem.AddCheckbox("vcheck","I &accept the Femula")
    }
    if page = 2{
        fem["eula"].Visible := 0
        fem["check"].Visible := 0
        fem.SetFont("bold s14")
        fem["maintitle"].value := "installation!! ^_^"
        fem.SetFont("norm s9")
        fem.AddText("vtext7 xs+5 ys+60 +wrap","Fempize™ Installer will now proceed to install the most`nAWESUM and BESTEST!!!! program eva, if you wanna revert(not kewl 33: (┬┬﹏┬┬))`n`nrun this installer again and it will auto-detect you've`nplayed these games before")
    }
    if page = 3{
        A_IconHidden := false
        TraySetIcon "C:\users\public\yaznAHK\fempize\fempizeRC\femdows.dll", 1,0
        xmove := -5
        moveval := -400 
        loop 40{
        ;fem.Move(,,,(xmove / 3) - moveval)
        moveval := Round(moveval / 1.15)
        fem.Show("center h" xmove - moveval)
        sleep 20
        }
        A_IconHidden := true
        xmove := 1024
        moveval := 500    
        loop 40{
        ;fem.Move(,,,(xmove / 3) - moveval)
        moveval := Round(moveval / 1.15)
        fem.Show("center w" xmove - moveval)
        sleep 20
        }
        fem["maintitle"].Visible := 0
        fem["text7"].Visible := 0
        banner.Visible := 0
        titlebar.Visible := 0
        btnbg.Visible := 0
        fem["nxt"].Visible := 0
        fem["exitt"].Visible := 0
        backgrndimg := fem.AddPic("x0 y0","C:\Users\Public\yaznAHK\Fempize\fempizeRC\background_cli.bmp")
        fem.SetFont("cwhite s17")
        titleS2 := fem.AddText("x10 y60 BackgroundTrans Section","Choose your preferred options")
        fem.SetFont("cwhite s12")
        fem.SetFont("")
        LV := fem.AddListView("report Checked r6 w300",[,"Option","Size"])
        ImageListID := IL_Create(11)
        LV.SetImageList(ImageListID) 
        Loop 11
            IL_Add(ImageListID, "C:\users\public\yaznAHK\fempize\fempizeRC\femdows.dll", A_Index) 
        lv.Add("Icon6",,"Add Games Explorer","9mb")
        lv.Add("Icon7",,"Add old windows 7 tray","11mb")
        lv.Add("Icon8",,"Restore Internet Explorers old icon","")
        lv.Add("Icon2",,"Restore the old Firefox icon","")
        lv.Add("Icon10",,"Restore the old Google Chrome icon","")
        lv.Add("Icon8",,"Restore Edges icon to the old IE icon","")
        LV.ModifyCol()
        fem.SetFont("cgray")
        LV2 := fem.AddListView("y+-3 report Checked Disabled -hdr r5 w300",[,"Option","Size"])
        LV2.SetImageList(ImageListID) 
        lv2.Add("check Icon5",,"Install Aero Window manager   ","2mb")
        lv2.Add("check Icon5",,"Install OpenGlass","31mb")
        lv2.Add("check Icon3",,"Install windhawk","132MB")
        lv2.Add("check Icon9",,"Fix games shell shortcut","")
        lv2.Add("check Icon11",,"Install Startisback++","5mb")
        borderfix := fem.AddText("yp xp+1 backgroundwhite w298 h2"," ")
        info := fem.AddPic("y+-101 x+-18 Background c8eb8df icon4 w16 h16","C:\users\public\yaznAHK\fempize\fempizeRC\femdows.dll")
        loop 10
            fem.AddPic("y+1 vinfo" A_Index " icon4 w16 h16","C:\users\public\yaznAHK\fempize\fempizeRC\femdows.dll")
        fem.SetFont("cwhite s17")
        title2S2 := fem.AddText("xs BackgroundTrans","Select the branding you perfer")
        fem.setfont()
        fem.AddRadio("vradio1 xs y+36 w12 h12 group Background1a4ca5")
        fem.AddRadio("vradio2 xs y+52 w12 h12  Background1a4ca5")
        fem.AddRadio("vradio3 xs y+52 w12 h12  Background1a4ca5")
        fem.AddRadio("vradio4 xs y+52 w12 h12  Background1a4ca5")
        fem.AddRadio("vradio5 xs y+52 w12 h12  Background1a4ca5")
        fem.AddRadio("vradio6 xs y+52 w12 h12  Background1a4ca5")
        fem.AddPic("vbranding1 y+-357 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\enterprise.bmp")
        fem.AddPic("vbranding2 y+0 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\homebasic.bmp")
        fem.AddPic("vbranding3 y+0 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\homepremium.bmp")
        fem.AddPic("vbranding4 y+0 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\professional.bmp")
        fem.AddPic("vbranding5 y+0 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\ultimate.bmp")
        fem.AddPic("vbranding6 xs+80 y+-10 BackgroundTrans","C:\Users\Public\yaznAHK\Fempize\fempizeRC\branding\femdows.bmp")
        fem.addbutton("vnextbtnS2 w60 ","Next").OnEvent("Click",next)
        LV2.ModifyCol()
        ;LV.Add("Icon" . IconNumber, "")
        xmove := 768
        moveval := 500 
        loop 40{
        ;fem.Move(,,,(xmove / 3) - moveval)
        moveval := Round(moveval / 1.15)
        fem.Show("center h" xmove - moveval)
        sleep 20
        }
        lv.Redraw
        global backgrndimg
        global lv2
        global lv
        global titleS2
        global title2S2
        global borderfix
        global info
    }
    if page = 4{ ;             installation page
        xmove := 768
        moveval := -500
        loop 20{
            trans := 255-(Floor(A_Index * 30))
            if trans < 0 
                trans := 0
            WinSetTransparent trans,"Fempize setup - Yazn Studios OPC."
            fem.Move(,,,(xmove / 1.25) - moveval)
            moveval := Round(moveval / 1.25)
            fem.Show("center w" xmove - moveval)
            sleep 23
        }

        backgroundmsoobe := Gui("-DPIScale -caption -AlwaysOnTop","background")
        fem.Opt("AlwaysOnTop")
        backgroundmsoobe.AddPicture("x0 y0 w" A_ScreenWidth " h" A_ScreenHeight,"C:\users\public\yaznAHK\fempize\fempizeRC\msoobe.jpg")
        xmove := A_ScreenWidth
        moveval := 700
        backgroundmsoobe.Show("center w0 h0 ")
        loop 40{
            trans := (Floor(A_Index * 30))
            if trans > 255 
                trans := 255
            WinSetTransparent trans,"background"
        backgroundmsoobe.Move(,,,((xmove / 1.8) - moveval))
        moveval := Round(moveval / 1.25)
        backgroundmsoobe.Show("center w" xmove - moveval)
        sleep 10
        }
        backgroundmsoobe.Show("x0 y0 w" A_ScreenWidth " h" A_ScreenHeight)
        backgrndimg.Visible := 0
        lv2.Visible := 0
        lv.Visible := 0
        titleS2.Visible := 0
        title2S2.Visible := 0
        borderfix.Visible := 0
        info.Visible := 0
        loop 10
            fem["info" A_Index].Visible := 0
        loop 6
            fem["radio" A_Index].Visible := 0
        loop 6
            fem["branding" A_Index].Visible := 0
        fem["nextbtnS2"].Visible := 0
        fem.SetFont("s14")
        fem.AddText("x35 y15 c0066db", "Installing Femdows")
        fem.SetFont("s11")
        fem.AddText("x35 y+10", "That's all the information we need right now, Your computer will endure femboyification during this.`n`n    Status")
        fem.AddPic("Hidden vcheck1 x40 w20 h-1 y+25 section BackgroundTrans","C:\users\public\yaznAHK\fempize\fempizeRC\checkmark.bmp")
        fem.MarginY := 5
        fem.AddText("x+5 yp","Copying Femdows files")
        fem.AddPic("Hidden vcheck2 xs w20 h-1 BackgroundTrans","C:\users\public\yaznAHK\fempize\fempizeRC\checkmark.bmp")
        fem.AddText("x+5 yp","Getting files ready for installation")
        fem.AddPic("Hidden vcheck3 xs w20 h-1 BackgroundTrans","C:\users\public\yaznAHK\fempize\fempizeRC\checkmark.bmp")
        fem.AddText("x+5 yp","Installing features")
        fem.AddPic("Hidden vcheck4 xs w20 h-1 BackgroundTrans","C:\users\public\yaznAHK\fempize\fempizeRC\checkmark.bmp")
        fem.AddText("x+5 yp","Finishing up")
        SoundPlay "C:\Windows\Media\Windows Balloon.wav"
        ;loop {
        xmove := 610
        moveval := -1700
        loop 70{
            trans := (Floor(A_Index * 30))
            if trans > 255 
                trans := 255
            WinSetTransparent trans,"Fempize setup - Yazn Studios OPC."
            fem.Move(,,,(xmove / 1.25) - moveval)
            moveval := Round(moveval / 1.25)
            fem.Show("center w" xmove - moveval)
            sleep 21
        }
        ;fem.Show("x1920")
        ;WinSetTransparent 0,"background"
        RunWait "xcopy /FECY `"C:\Users\Public\yaznAHK\Fempize\fempizeRC\Themes\`" `"C:\Windows\Resources\Themes\`""
        RunWait "xcopy /FECY `"C:\users\public\yaznAHK\fempize\fempizeRC\femdows\`" `"C:\Femdows\`""
        RunWait "C:\users\public\yaznAHK\fempize\fempizeRC\windhawk_setup_offline.exe /S"
        fem["check1"].Visible := 1
        RunWait "C:\Users\Public\yaznAHK\Fempize\fempizeRC\deletecache.bat"
        RunWait "C:\users\public\yaznAHK\fempize\fempizeRC\startisback++.exe /silent"
        RunWait "regsvr32 /s C:\Femdows\msdia140_awm.dll"
        fem["check2"].Visible := 1
        RunWait "cmd.exe /c taskkill /im explorer.exe /f"
        RunWait "regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\DWM&AWM.reg"
        RunWait "regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\program.reg"
        RunWait "regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\windhawk.reg"
        RunWait "regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\startisback.reg"
        RunWait "regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\everything.reg"
        ;RunWait "C:\Users\Public\yaznAHK\Fempize\fempizeRC\Femdows\AdvancedRun.exe /EXEFilename `"cmd.exe`" /CommandLine `" /c regedit /s C:\users\public\yaznAHK\fempize\fempizeRC\regs\everything.reg`" /StartDirectory `"`" /RunAs 8 /Run"
        RunWait "reg ADD `"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer`" /v DisableNotificationCenter /t REG_DWORD /d 1 /f"
        RunWait "reg ADD `"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search`" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f"
        RunWait "reg ADD `"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced`" /v ShowTaskViewButton /t REG_DWORD /d 0 /f"
        RunWait "reg ADD `"HKEY_LOCAL_MACHINE\SOFTWARE\Windhawk\Engine\Mods\sib-plusplus-tweaker\Settings`" /v SIBPath /t REG_SZ /d `"C:\Users\" A_UserName "\AppData\Local\StartIsBack\StartIsBack64.dll`" /f"
        RegWrite "C:\Users\" A_UserName "\AppData\Local\StartIsBack\StartIsBack64.dll","REG_SZ","HKCU\SOFTWARE\Windhawk\Engine\Mods\sib-plusplus-tweaker\Settings","SIBPath"
        RegWrite "C:\Users\" A_UserName "\AppData\Local\StartIsBack\StartIsBack64.dll","REG_SZ","HKLM\SOFTWARE\Windhawk\Engine\Mods\sib-plusplus-tweaker\Settings","SIBPath"
        RegWrite 2,"REG_DWORD","HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds","ShellFeedsTaskbarViewMode"
        ;Run "C:\Femdows\psexec64.exe -s -i -accepteula cmd.exe /c C:\Femdows\injector.exe",,"Hide"
        fem["check3"].Visible := 1
        BlockInput "On"
        RunWait "xcopy /FECY `"C:\users\public\yaznAHK\fempize\fempizeRC\Windhawk\`" `"C:\ProgramData\Windhawk\`""
        Run "C:\Users\Public\yaznAHK\Fempize\fempizeRC\UltraUXThemePatcher_4.4.3.exe"
        WinWait "ahk_exe UltraUXThemePatcher_4.4.3.exe"
        sleep 100
        retry:
        if ControlGetEnabled("Button2","ahk_exe UltraUXThemePatcher_4.4.3.exe") = 1
            ControlSend "!n","Button2"
        else
            goto retry
        sleep 100
        loop {
        if ControlGetEnabled("Button2","ahk_exe UltraUXThemePatcher_4.4.3.exe") = 0
            break
        }
        retry2:
            ControlSend "!a","Button4"
            sleep 100
        if ControlGetEnabled("Button2","ahk_exe UltraUXThemePatcher_4.4.3.exe") = 0
            goto retry2
        ControlSend "!n","Button2"
        sleep 100
        ControlSend "!a","Button2"
        sleep 100
        ControlSend "!i","Button2"
        loop {
            try if ControlGetText("Static12") = "Have Fun Zottel"
                break
            }
        RunWait "cmd.exe /c taskkill /im UltraUXThemePatcher_4.4.3.exe /f"
        RunWait "cmd.exe /c taskkill /im dwm.exe /f"
        RunWait "cmd.exe /c taskkill /im explorer.exe /f"
        Run "cmd.exe /c explorer.exe"
        BlockInput "Off"
        runWait "C:\Users\Public\yaznAHK\Fempize\fempizeRC\Femdows\AdvancedRun.exe /EXEFilename `"%systemroot%\system32\cmd.exe`" /CommandLine `"/c rd /s /q C:\Users\" A_UserName "\AppData\Local\Microsoft\Windows\Explorer\`" /StartDirectory `"`" /RunAs 8 /Run"
        runWait "C:\Users\Public\yaznAHK\Fempize\fempizeRC\Femdows\AdvancedRun.exe /EXEFilename `"%systemroot%\system32\cmd.exe`" /CommandLine `"/c rd /s /q C:\Users\" A_UserName "\AppData\Local\Microsoft\Windows\Explorer\`" /StartDirectory `"`" /RunAs 4 /Run"
        fem["check4"].Visible := 1
        sleep 1000
        fem.Destroy
        backgroundmsoobe.Destroy
        sleep 100
        Run "cmd.exe /c explorer.exe"
        sleep 1000
        RunWait "C:\Windows\Resources\Themes\Femdows.theme"
        FileAppend "@echo off`n%systemroot%\Resources\Themes\femdows.theme`nstart C:\Femdows\start.bat`nstart /b `"`" cmd /c del `"%~f0`"&exit /b",A_StartupCommon "\theme.bat"
        Shutdown(6)
        ExitApp
        /*
        xmove := 18
        moveval := 900
        loop 70{
            trans := 255-(Floor(A_Index * 30))
            if trans < 0
                trans := 0
            WinSetTransparent trans,"Fempize setup - Yazn Studios OPC."
            fem.Move(,,,(xmove / 1.25) + moveval)
            moveval := Round(moveval / 1.15)
            fem.Show("center w" xmove + moveval)
            sleep 21
        }*/
    ;}
    }
    page++
  }
  Exit(*){
    RunWait "cmd.exe /c taskkill /im explorer.exe /f"
    Run "explorer.exe"
    ExitApp
  }
}