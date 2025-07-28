; Wait until the Windows Security popup is active
WinWaitActive("Windows Security")

; Move to the password field
Send("{TAB}")
Send("{TAB}") 
Send("{ENTER}")

Send("{TAB}")
Send("{ENTER}")

Send("{TAB}")
; Type username
Send("your_username")


; Type password
Send("your_password")

; Submit
Send("{ENTER}")
