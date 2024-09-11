/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR tide = 0




-> seashore

== seashore ==
You are sitting on the beach. {tide == 0 | The receding water has revealed a passage leading down into the sand.}


It is {advance_time()}
It is {tide_funk()} tide

+ {tide == 0} [Go down into the sand.] -> sandCastle
+ [Stroll down the beach.] -> beach2
-> DONE

== sandCastle ==
You enter a dinmly lit sandy room under the beach. {It looks stable enough. | It looks a little worn down. | It looks like it is about to collapse. | It is about to collapse.} The passage keeps going down ahead.

+ [Go back up to the beach.] -> seashore
+ [Keep heading down.] -> castle2

== castle2
You can hardly see anything. After your eyes adjust, you can see a small statue in the wall that seems to be carved out of some kind of gemstone. Your instincs say you shouldn't take it, but it does look expensive...

+ [Take it.] -> death
+ [Leave.] -> sandCastle

== death ==
You grab the statue, and something starts trickling out of the hole the statue was in. You realize with horror that it's ocean water. Before you have time to leave, water starts spewing through the hole, and the entire room is filled with water before collapsing entirely.

-> END

== beach2 ==
This is further down the beach.

It is {advance_time()}
It is {tide_funk()} tide
* {time == 1 and tide == 0} [Pick up some seashells] ->shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"

        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
== function tide_funk ==

{
    - tide == 0:
        ~tide = 1
        ~return "high"
    -tide == 1:
        ~tide = 0
        ~return "low"
}

~return tide
    
    
