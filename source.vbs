strPw = Password( "Please enter your password:" )
WScript.Echo "Your password is: " & strPw

Function Password( myPrompt )
' This function hides a password while it is being typed.
' myPrompt is the text prompting the user to type a password.
' The function clears the prompt and returns the typed password.
' This code is based on Microsoft TechNet ScriptCenter "Mask Command Line Passwords"
' http://www.microsoft.com/technet/scriptcenter/scripts/default.mspx?mfr=true

    ' Standard housekeeping
    Dim objPassword

    ' Use ScriptPW.dll by creating an object
    Set objPassword = CreateObject( "ScriptPW.Password" )

    ' Display the prompt text
    WScript.StdOut.Write myPrompt

    ' Return the typed password
    Password = objPassword.GetPassword()

    ' Clear prompt
    WScript.StdOut.Write String( Len( myPrompt ), Chr( 8 ) ) _
                       & Space( Len( myPrompt ) ) _
                       & String( Len( myPrompt ), Chr( 8 ) )
End Function
