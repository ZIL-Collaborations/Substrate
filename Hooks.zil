"Game - ZILF Library Hooks"

"Hook - End of Command Activities"

<BIND ((REDEFINE T))
    <DEFMAC HOOK-END-OF-COMMAND ()
       '<BIND ()
            <NOTIFY-IF-SCORE-UPDATED>
            <FINISH-IF-CODE-SET>
        >
    >
>
