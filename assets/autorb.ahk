#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2

CoordMode("Mouse", "Screen") 

F5:: {

    static checkdelay := 5 * 1000
	static toggle := 0
    toggle := !toggle

    while (toggle) {
        Sleep checkdelay

        ; check if lvl is 300
        if (ImageSearch(&FoundX, &FoundY, 850, 990, 1060, 1060, "*TransBlack *30 C:\Users\User\lvlt.png")) {
                ; check if ld image is on screen, if yes turn off auto rb to not get banned
                if (ImageSearch(&FoundX, &FoundY, 650, 377, 1113, 670, "*30 C:\Users\User\ld.png")) {
                    toggle := !toggle
                }
                Send("{Del}") ; press delete to stop auto mapler

                ; add stuff here like janus / etc if u need to
                Sleep 400
                num := Random(1, 10)
                Sleep 600
                Send("{Enter}")
                Sleep 200
                SendText("@rb " num)
                Sleep 200
                Send("{Enter}")
                Sleep 200
                Send("{Enter}")
                Sleep 200
                ; can remove the 5500 sleep if not needed
                Sleep 5500
                Send("{Del}") ; re enable auto mapler

        }
    }


    
}
