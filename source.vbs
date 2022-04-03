strPw = Password( "Admin Password required to stop shutdown proccess: " )

Function Password( myPrompt )
  Wscript.StdOut.Write String( Len( myPrompt ), Chr( 8 ) ) _
                       & Space( Len( myPrompt ) ) _
                       & String( Len( myPrompt ), Chr( 8 ) )
End Function
