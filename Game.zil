"G A M E  -  Main File"

"THE PROJECT"

"Each ZILF game project must have a name, a description, a release number and a
z-machine version"

<CONSTANT GAME-TITLE "Game">
<CONSTANT GAME-DESCRIPTION
"A ZILF game by IF Author">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"THE MECHANICS"

"Game mechanics are mostly provided by the ZILF Library but can be modified or
enhanced with custom interaction and behaviour which may also be reused as
library extensions."

"Startup"

<ROUTINE GO ()
    <SET-THE-SCENE>
    <INTRODUCE-THE-GAME>
    <MAIN-LOOP>
>

"Library and Extensions"

<INSERT-FILE "parser">
<INSERT-FILE "../Extensions/Scoring">
<INSERT-FILE "../Extensions/Finishing">

"Game Specific Interaction and Behaviour"

<INSERT-FILE "Actions">
<INSERT-FILE "Activities">

"Extra Game Verbs"

<SETG EXTRA-GAME-VERBS
   '(NOTIFY-OFF NOTIFY-ON SCORE ;"from Scoring"
    )
>

"Library Hooks"

<BIND ((REDEFINE T))
    <DEFMAC HOOK-END-OF-COMMAND ()
       '<BIND ()
            <NOTIFY-IF-SCORE-UPDATED> ;"Scoring"
            <FINISH-IF-CODE-SET>      ;"Finishing"
        >
    >
>


"THE GAME"

"ZILF games are a form of Interactive Fiction. They can be thought of as telling
a story in which the player can take part. Expressed in the language of
storytelling, each game has a cast, a setting, and a plot."

"Also, each game starts with setting the scene and an introduction."

"Setting the Scene"

<ROUTINE SET-THE-SCENE ()
    <SETG HERE DARKNESS>
    <MOVE PLAYER ,HERE>
    <SETG MAX-SCORE 0>
>

"Introduction"

<ROUTINE INTRODUCE-THE-GAME ()
    <TELL CR CR "This game starts in the dark ..." CR>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
>

"Cast, Setting and Plot"

<INSERT-FILE "Characters">
<INSERT-FILE "Locations">
<INSERT-FILE "Scenes">
