CHAIN IF WEIGHT #-1 ~Global("C0X1JaheiraTalk","GLOBAL",1)~ THEN JAHEIRAJ jaheira
~So... we are back. To where we first saw the light again, and within this rubble... is where this all began.~
DO ~SetGlobal("C0X1JaheiraTalk","GLOBAL",2)~
== JAHEIRAJ ~Though I despise the thought of returning to that nightmarish dungeon, with all we have suffered and lost within it... some part of me wishes we could regardless. So that we may pay our proper respects to the fallen.~
== JAHEIRAJ ~But... this is as close as we will get. If you would take a moment to wait, <CHARNAME>, I would like to speak a few words to Khalid's memory.~
END
  ++ ~Of course. Take as much time as you need, Jaheira.~ + jaheira.1
  ++ ~Fine. I'll go find a decent place to sit for a while.~ + jaheira.1
  ++ ~We don't have time for this. You can mourn anywhere.~ + jaheira.0

CHAIN JAHEIRAJ jaheira.0
~As you wish. Under any other circumstance, I would question your dedication to our lost friends, but your destiny is a difficult one, <CHARNAME>, and so I will not judge you this time.~
EXIT

CHAIN JAHEIRAJ jaheira.1
~Khalid... it has been a long time. I am back. Irenicus is dead, and you... you are avenged at last.~
== MINSCJ IF ~InParty("MINSC")~ THEN ~We should say a few words for Dynaheir too, don't you agree, Boo? *squeak* What's that? You think her spirit is long gone, Boo? No, that cannot be! Dynaheir has watched over us all of this time, I know it!~
== JAHEIRAJ ~Much has happened since we lost you, and I have seen and learned many things. Of <CHARNAME>, of myself, of things I once believed I knew, but was truly ignorant of... but I have learned that it can all be accepted, and overcome.~
== JAHEIRAJ ~I have few regrets left. The one remaining... was that I lacked the strength to carry you out from beneath that hellish place, so that you may have the dignity you deserve... but I have always known how strong you truly were, Khalid. You would have been strong enough to walk in my steps, had our places been exchanged.~
== JAHEIRAJ ~For your sake, I will press on. I will fulfill Gorion's hopes, and yours, for <CHARNAME>. Only then can I finally accept that you will be at peace. I promise you, Khalid, I will not fall... and I will not forget you as the man whose true strength was far beyond mine.~
== MINSCJ IF ~InParty("MINSC")~ THEN ~Oh, Dynaheir... you are listening, yes? Minsc may not be able to hear your voice, but he still senses you. Yes, Minsc has been strong, and kicked Irenicus into the fiery pits that the fiend deserves with his trusty, hardened boot!~
== MINSCJ IF ~InParty("MINSC")~ THEN ~But Minsc... Minsc still often feels lost without you. I still wish you were here, to teach me to read, to listen when I have a question, and to smack me in the back of my head when I am being foolish. We are so lucky that <CHARNAME> is almost as good of a teacher as you were, Dynaheir. If not... I do not know how far I would have made it.~
== MINSCJ IF ~InParty("MINSC")~ THEN ~Minsc—Minsc can often be a fool, and others may laugh at him for it, but Minsc has always known... known that I am nothing but trouble without someone with the wisdom to point my sword in the correct direction. But that is why Minsc must press on for <CHARNAME>'s sake. Our actions shall never bring you shame, Dynaheir, so long as we live and breathe! So says Minsc, and says Boo! *squeak*~
== IMOEN2J IF ~InParty("IMOEN2")~ THEN ~Khalid... Dynaheir... to be honest, I don't even know what to say. After all the pain, the torture and darkness, I was afraid I'd even forgotten what the two of you looked like. I...~
== JAHEIRAJ IF ~InParty("IMOEN2")~ ~Go on, child.~
== IMOEN2J IF ~InParty("IMOEN2")~ THEN ~I was afraid to admit it to myself, but I think more than a little of it was deliberate. I was so afraid of remembering, of thinking about what Irenicus had done to you in front of me, while I was trapped and helpless, that I just wanted to forget all of it... no matter how ashamed it'd make me afterward.~
== IMOEN2J IF ~InParty("IMOEN2")~ THEN ~But now, after it's all over... it's all coming back to me. All the good, and the difficult times we shared together as friends and companions... I miss you both so much. I wish I could see you again... and I hope wherever you both are, you're at peace. And... that you'll forgive me for not having the strength to save you.~
== JAHEIRAJ ~No more words need be said for any of us. The past is settled... and now, it is your future that we must all think of, <CHARNAME>. We cannot allow those who still live to follow the fallen. Never again.~
EXIT