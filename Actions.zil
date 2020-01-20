"Substrate - Actions"

<SETG EXTRA-GAME-VERBS '(NOTIFY-OFF NOTIFY-ON SCORE)>


"Action - Disabling Score Update Notification"

<SYNTAX NOTIFY OFF OBJECT (FIND KLUDGEBIT) = V-NOTIFY-OFF>

<ROUTINE V-NOTIFY-OFF ()
    <TELL "Score notification off." CR>
    <SETG SCORE-UPDATE-NOTIFICATION-ON <>>
>


"Action - Enabling Score Update Notification"

<SYNTAX NOTIFY ON OBJECT (FIND KLUDGEBIT) = V-NOTIFY-ON>
<SYNTAX NOTIFY = V-NOTIFY-ON>

<ROUTINE V-NOTIFY-ON ()
    <TELL "Score notification on." CR>
    <SETG SCORE-UPDATE-NOTIFICATION-ON T>
>


"Action - On Demand Score Notification"

<SYNTAX SCORE = V-SCORE>

<ROUTINE V-SCORE ()
    <TELL "You have so far scored " N ,SCORE ", ">
    <TELL "out of a possible " N ,MAX-SCORE ", ">
    <TELL "in " N ,MOVES " turns." CR>
>
