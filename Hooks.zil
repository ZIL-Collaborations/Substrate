"Game - ZILF Library Hooks"

"Hook - End of Command Activities"

<BIND ((REDEFINE T))
    <DEFMAC HOOK-END-OF-COMMAND ()
       '<BIND ()
            <NOTIFY-IF-SCORE-UPDATED> ;"see Scoring.zil"
            <FINISH-IF-CODE-SET>      ;"see Scoring.zil"
        >
    >
>
