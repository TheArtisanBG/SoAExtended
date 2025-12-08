BEGIN C0X1KID1
BEGIN C0X1KID2
BEGIN C0X1KID3
BEGIN C0X1DEMI
BEGIN C0X1ELHA

EXTEND_BOTTOM SUELLE2 18
IF ~True()~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS01")~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",0)~ THEN C0X1KID1 a1
~Look... <PRO_HESHE> fell.~
DO ~SetGlobal("C0X1Begin","GLOBAL",1)~
== C0X1KID2 ~The dreams <PRO_HESHE> had must have been scary. I think <PRO_HESHE> was mumbling too...~
== C0X1KID3 ~Don't get too close! Viras said <PRO_HESHE> can turn into a monster.~
== C0X1KID2 ~I don't think <PRO_HESHE> looks much like a monster.~
== C0X1KID1 ~But <PRO_HESHE> stopped the Exile and saved our queen! So <PRO_HESHE> must be at least a great warrior, or a powerful mage. I hope I can be as strong as <PRO_HIMHER> one day, and protect our city like <PRO_HESHE> has.~
== C0X1KID3 ~Not likely. I still see you cry when your brother hits you with a stick.~
== C0X1KID1 ~Why you—~
== C0X1KID2 ~Hush! I think <PRO_HESHE> is awakening.~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,FaceObject("C0X1KID2"))
Wait(1)
ActionOverride(Player1,SetSequence(SEQ_AWAKE))
Wait(2)
ActionOverride("C0X1KID2",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",1)~ THEN C0X1KID2 a2
~Good day to you, saviour.~
DO ~SetGlobal("C0X1Begin","GLOBAL",2)~
END
  ++ ~Good day to you as well, child.~ + a2.1
  ++ ~What am I doing on the floor...?~ + a2.1
  ++ ~Ack! Children! Stay away from me, I can't stand the little monsters!~ EXTERN C0X1KID3 a2.2

CHAIN C0X1KID2 a2.1
~You were shaking rather violently in our sleep. We were about to call the priestess, but after you fell, we thought it better to first make sure you were alright.~
== C0X1KID1 ~We were about to gather the courage to get closer and poke your face, and see if you would react.~
EXTERN C0X1KID2 a2.3

CHAIN C0X1KID3 a2.2
~Aah! The hero is going to turn into a monster! Run while you can!~
EXTERN C0X1KID2 a2.3

CHAIN C0X1KID2 a2.3
~Oh, shut up. The priestess will be here soon, so we should go before she—~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
MoveViewPoint([413.501],STANDARD)
Wait(2)
CreateCreature("C0X1DEMI",[411.502],N)
SmallWait(5)
ActionOverride("C0X1DEMI",FaceObject(Player1))
ActionOverride("C0X1KID1",MoveToPoint([476.368]))
ActionOverride("C0X1KID1",SmallWait(1))
ActionOverride("C0X1KID1",FaceObject("C0X1DEMI"))
ActionOverride("C0X1KID3",MoveToPoint([346.355]))
ActionOverride("C0X1KID3",SmallWait(1))
ActionOverride("C0X1KID3",FaceObject("C0X1DEMI"))
SmallWait(5)
ActionOverride("C0X1DEMI",MoveToPoint([413.453]))
MoveToPoint([416.373])
ActionOverride(Player1,MoveToPoint([281.377]))
ActionOverride("C0X1KID1",FaceObject("C0X1DEMI"))
ActionOverride("C0X1KID3",FaceObject("C0X1DEMI"))
FaceObject("C0X1DEMI")
Wait(2)
ActionOverride("C0X1DEMI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",2)~ THEN C0X1DEMI a3
~Children... I thought you all more responsible than to sneak into such a place without anyone's knowledge. Surely there must be better ways to amuse yourselves.~
DO ~SetGlobal("C0X1Begin","GLOBAL",3)~
== C0X1KID2 ~We're sorry, priestess.~
== C0X1DEMI ~You have not caused trouble for our valued guest, have you?~
== C0X1KID3 ~Well, <PRO_HESHE> was thrashing all on <PRO_HISHER> own before we—*OW*!~
== C0X1KID2 ~No, priestess.~
== C0X1DEMI ~Good. I will spare you the scolding, but remember that the festival is quickly approaching, and you should be on your best behaviour for the everyone's sake. Now, go and assist your parents with the preparations.~
== C0X1KID1 ~Yes, priestess, we're going...~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS02")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",3)~ THEN C0X1DEMI a4
~I beg your understanding for the disturbance. The spirits of the innocent young recover much more quickly than others... and with it, comes their usual mischief.~
DO ~SetGlobal("C0X1Begin","GLOBAL",4)~
== C0X1DEMI ~I hope they did not overly disrupt your rest.~
END
  ++ ~Not at all. It's relieving to see the innocent people of the city recovering.~ + a4.1
  ++ ~I was disrupted, yes... but not by the children. I had a dream, not long before you came.~ + a4.3b
  ++ ~Never mind that. I'm fully recovered from my battle from Irenicus, and am eager to leave.~ + a4.2

CHAIN C0X1DEMI a4.1
~That is very kind of you, <CHARNAME>. After all we have wrought upon you, whether unintended or otherwise, you have the right to view our concerns as meager compared to your own. I only hope your own recovery will be as swift.~
EXTERN C0X1DEMI a4.3a

CHAIN C0X1DEMI a4.2
~Yes, I expect that you are fully prepared to resume your travels, as you should be. I must apologize for forcing you to undergo our routine treatment and observations for as long as you have.~
EXTERN C0X1DEMI a4.3a

CHAIN C0X1DEMI a4.3a
~I hope you are not too resentful that you have been asked to remain under our watch for the past week. It is unfortunate, but necessary... Jonel—the Exile's experiments on your soul were far beyond any knowledge which even our high mages understand, and we must ensure that all traces of his curse within you are gone.~
== C0X1DEMI ~As of today, however, I originally was certain that you are indeed fully restored. Your condition has been steadily improving, or at least, I believed so until just now... you do not look as well as you were.~
EXTERN C0X1DEMI a4.4

CHAIN C0X1DEMI a4.3b
~A dream? A vision, perhaps... as I recall, you mentioned experiencing similar things following the Exile's torture. They all involved him in some manner.~
EXTERN C0X1DEMI a4.4

CHAIN C0X1DEMI a4.4
~Have you experienced any adverse effects? I hope you may be truthful, if so. This is for your sake as well as ours.~
END
  ++ ~I was dreaming of Irenicus... he was in some sort of hellscape, surrounded by bloodthirsty fiends as they overwhelmed him and carried him into an ocean of magma. The last thing I remember before I woke up was his screams as he fell.~ + a4.5
  ++ ~It's all very fuzzy. I can't remember what I was dreaming about... but it was of Irenicus, I'm sure of it.~ + a4.5

CHAIN C0X1DEMI a4.5
~...I see. Had this occurred sooner after your restoration, this would be even more alarming. Given the knowledge I have gathered now, however, I suspect it is an effect of the last remaining connection between your soul and his being severed, and you had the misfortune of seeing him one final time in that moment.~
== C0X1DEMI ~I doubt you will ever be tormented by him again. You may rest assured of that.~
== C0X1DEMI ~...~
END
  ++ ~Demin? You seem lost in thought.~ + a4.6
  ++ ~So what now?~ + a4.7

CHAIN C0X1DEMI a4.6
~Hmm? Ah, there is no need to concern yourself with my thoughts, <CHARNAME>. I was merely pondering whether it would be for better or worse if the Queen knew of what you saw... but given our coming circumstances, it would be better to keep this secret from her for the time being, if she should know at all.~
EXTERN C0X1DEMI a4.7

CHAIN C0X1DEMI a4.7
~There was another reason I came to you other than one last determination of your health, <CHARNAME>. It is good news, this time.~
= ~Our Queen has made the decision to prepare the Festival of the Bloom, as a commemoration of your victory, and the city's salvation.~
END
  ++ ~What is the Festival of the Bloom?~ + a4.8
  ++ ~May I attend this festival?~ + a4.9

CHAIN C0X1DEMI a4.8
~The festival is our most awaited celebration, held only once every several years. This time, it is exceptionally early... but Queen Ellesime believes it is a necessity for our people, both those who suffered the pain of the Exile's slaughter, and those returning from the battle against the drow.~
= ~Those among our people specializing in the arts, as well as our priests, seek to entertain and relieve the gloom within our people... given what has happened, you may see why such an event would be welcomed now more than ever.~
EXTERN C0X1DEMI a4.9

CHAIN C0X1DEMI a4.9
~If you intend to stay for the festival, you are of course most welcome. Queen Ellesime in particular hopes that you may grace us with your presence.~
= ~You may perhaps be the first stranger in a long time to see the festival with your own eyes... though we have lost many of our best artisans during this tragedy, there are still enough of us not to disappoint our people... nor our guests.~
= ~There is still time needed to prepare, however. Until then, Queen Ellesime hopes to speak with you one more time, in case it is the last should you choose to leave for your next journey instead. The palace is open to you—the guards will allow you entry. You may find her there.~
= ~As for your companions, they await you outside, <CHARNAME>. We should go and meet them.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS03")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",4)~ THEN C0X1DEMI a5
~Suldanessellar is recovering. Slowly, and with much difficulty... but eventually, the old scars reopened by Joneleth... the Exile will all be healed, and for good.~
DO ~SetGlobal("C0X1Begin","GLOBAL",5)~
== C0X1DEMI ~The festival will begin tomorrow, and will last for five days. If you wish to leave the city and attend to your personal affairs during this time, the Queen has granted you and your companions permission to enter and leave the city freely.~
== C0X1DEMI ~Now, I must be going. The war may be over, but those returning from battle against the drow have suffered many wounds. Before that, however... I have some private affairs of my own to attend to first. Farewell, <CHARNAME>.~
DO ~EscapeAreaObject("Tran2803")~ EXIT

CHAIN IF ~GlobalGT("C0X1Begin","GLOBAL",4)~ THEN C0X1DEMI a6
~I greet you, <CHARNAME>. How may I be of assistance to you?~
END
  + ~!Dead("SUELF10")
  !Dead("C0X1REIR")
  InMyArea("C0X1REIR")~ + ~I need healing.~ + a6.1
  + ~OR(3)
  Dead("SUELF10")
  Dead("C0X1REIR")
  !InMyArea("C0X1REIR")~ + ~I need healing.~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  + ~Global("C0X1DeminElhan","GLOBAL",3)~ + ~I saw your argument with Elhan. What is your relation to each other?~ DO ~SetGlobal("C0X1DeminElhan","GLOBAL",4)~ + a6.2
  ++ ~Nothing right now.~ EXIT

CHAIN C0X1DEMI a6.1
~Of course. Unfortunately, I am currently occupied with the restoration of those returning from the war with the drow, but please speak with Reirra if you require support.~
EXIT

CHAIN C0X1DEMI a6.2
~Ah. *sigh* I recall you were there to see the end of our conversation. Forgive me, I was too overwhelmed with my frustration at the time that I could not even properly greet you.~
= ~As you may have surmised already, Elhan and I were... once husband and wife. We have long separated and moved forwards... or so we like to believe. We still cannot help but resume the old arguments during darker times.~
= ~The aftermath of the day Irenicus and Bodhi were afflicted with their curse, and the tensions that arose afterwards, was only the catalyst for a long line of differences and disagreements... do not misunderstand, <CHARNAME>. There is no true bad blood between us, or else I would not be so insistent upon his healing, nor he so resistant to it.~
= ~Elhan is simply... difficult, though I doubt you need me to tell you this. He pushed himself to assume his responsibilities far earlier than he was ready for them, and it has fostered many qualities that he feels are... unseemly of his station. Despite everything, I hope you might not be too harsh on him.~
= ~Now, I would prefer not to speak of this any longer. Good day to you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1DeminElhan","GLOBAL",1)~ THEN C0X1DEMI demin-elhan
~Once again, you have been neglecting the required procedures. Are you finding twisted enjoyment in aggravating my concerns?~
DO ~SetGlobal("C0X1DeminElhan","GLOBAL",2)~
== C0X1ELHA ~I am more than well enough to walk, and to speak, as you can clearly see. Were it not for your endless insistence, I would have resumed my duties long before now, instead of being confined to my home like a helpless invalid.~
== C0X1DEMI ~You may consider it dutiful, dignified, or a necessity of your pride to keep all who know you at a distance, but you have reached a new height in arrogance if you believe I of all people might be fooled by your display.~
== C0X1ELHA ~...~
== C0X1DEMI ~You know full well the impact our recent sufferings have caused for everyone. Everyone, which includes yourself, you stubborn mule.~
== C0X1ELHA ~If you understand this, then surely you must know where your priorities lie! There are those who have suffered far more than myself, who your skills would be far better served than one who is evidently at no risk of lasting harm! Have you already forgotten your true responsibilities as priestess?~
== C0X1DEMI ~...~
== C0X1DEMI ~...Bah.~
== C0X1DEMI ~Have it your way. I will leave you to agonize in your unrepentant sense of inadequacy for now, but you know better than to think I will give up so easily. Were that truly the case, you would have had no one at all capable of matching your stubbornness all this time.~
== C0X1ELHA ~Enough, Demin. That is all in the past now. Go and tend to the other soldiers. Our routine bickering serves no one, least of all ourselves.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS04")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1DeminElhan","GLOBAL",2)~ THEN C0X1ELHA demin-elhan2
~*sigh* I expect that undignified display from the both of us amused you.~
DO ~SetGlobal("C0X1DeminElhan","GLOBAL",3)~
END
  ++ ~What was all that about?~ + demin-elhan2-1
  ++ ~It seems like you're vexing not only to me, but even your own people.~ + demin-elhan2-1
  ++ ~I'm surprised someone like Demin would care for a man as inhospitable as yourself.~ + demin-elhan2-2
  ++ ~I didn't realize this house belonged to you.~ + demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-1
~A personal squabble, nothing more. Those more familiar would have known not to enter and be made aware of it.~
END
  ++ ~Are the two of you...?~ + demin-elhan2-2
  ++ ~Come to think of it, this house looks like it was built for two.~ + demin-elhan2-2
  ++ ~I'm sorry for intruding. I didn't realize this house was yours.~ + demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-2
~...It matters not. As you heard me say, it is all in the past. I have neither the desire, nor the need to dwell on it.~
EXTERN C0X1ELHA demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-3
~This is my home, though as an outsider I cannot fault you for not knowing. I rarely spend any time here these days, given the heavy weight of my endless duties. At this point, to take even a moment of respite is an alien thought.~
== C0X1ELHA ~I suppose since this is the first time we have met since the ceremony, this is an appropriate time for me to thank you personally for what you have done. Without you, the Exile would have destroyed us all. Instead... we are to have the Festival of the Bloom, far earlier than I anticipated.~
END
  ++ ~You don't sound too enthusiastic.~ + demin-elhan2-4
  ++ ~About time you thanked me properly after the way you've treated me.~ + demin-elhan2-5

CHAIN C0X1ELHA demin-elhan2-4
~I understand our Queen better than most. This is her effort in restoring the broken spirits of my people, those who have been scarred by the tragedy. This festival will likely be among the grandest of all, but it will be haunted by the Exile's shadow.~
== C0X1ELHA ~Still, it may indeed have a positive effect on most, especially the innocent youths, and that is a good thing. Perhaps even I may have a chance to enjoy it, if the priestess does not see fit to extend my imprisonment.~
== C0X1ELHA ~For now, however, I will take advantage of her absence and leave for a walk throughout the city, and see to the conditions of my men. Make yourself at home, <CHARNAME>. This house rarely serves me nowadays, so it may as well be of what use it can.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS05")~ EXIT

CHAIN C0X1ELHA demin-elhan2-5
~I will not apologize for the scrutiny that I feel was required at the time, but I am not so ignorant as to not acknowledge your courage and sacrifice, whatever your personal intentions may have been. We all owe you our lives... as well as this festival, for what it is worth.~
EXTERN C0X1ELHA demin-elhan2-4

BEGIN C0X1REIR

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1REIR reirra
~<CHARNAME>, our esteemed saviour! It is my honor to greet you once more. If you are in need of healing, I am more than happy to assist.~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~Where is Demin? I thought she would be here right now.~ + reirra.1
  ++ ~I would like to receive some healing.~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  ++ ~Not at the moment.~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1REIR reirra
~Rillifane's blessings to you, <CHARNAME>. Do you require healing, or other priestly services?~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~Where is Demin? I thought she would be here right now.~ + reirra.1
  ++ ~I would like to receive some healing.~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  ++ ~Not at the moment.~ EXIT

CHAIN C0X1REIR reirra.1
~Ah... if you seek the high priestess, she is currently attending to some private business. She should be back soon, but if you wish to find her yourself...~
== C0X1REIR ~Well, it is not my place to speak of her personal affairs. If it is urgent, however... go to the House of the Talisman. If she is still there, I think you will understand quickly enough.~
== C0X1REIR ~That is all I can say. If you need something else, do not hesitate to ask.~
EXIT

BEGIN C0X1EPR1

CHAIN IF WEIGHT #-1 ~RandomNum(3,1) Race(LasttalkedToby(Myself),ELF)~ THEN C0X1EPR1 priest
~May the Seldarine bless you upon your future ordeals, <PRO_BROTHERSISTER>.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,1) !Race(LasttalkedToby(Myself),ELF)~ THEN C0X1EPR1 priest1
~May the Seldarine bless you upon your future ordeals, elf-friend.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1EPR1 priest2
~Please be courteous within the Leaflord's house of worship.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1EPR1 priest2
~If you are in need of healing, I fear there are too many wounded from the war. Perhaps one of the other priests may assist you.~
EXIT

BEGIN C0X1ELF1

CHAIN IF WEIGHT #-1 ~RandomNum(3,1)~ THEN C0X1ELF1 guard1
~Our saviour! You are always welcome among us, a'maelamin.~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1ELF1 guard2
~The Queen has permitted you to walk freely throughout the city, hero.~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1ELF1 guard3
~The hero of Suldanessellar, standing before me! I bow before you, elf-friend.~
EXIT

BEGIN C0X1ELF2

CHAIN IF WEIGHT #-1 ~RandomNum(3,1)~ THEN C0X1ELF2 bard1
~The festival begins soon. We must all be at our best and put smiles on the faces of our brothers and sisters.~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1ELF2 bard2
~Greetings, hero!~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1ELF2 bard3
~'La-lala-laa, hm-m-hmm-hm-hmm'...~
EXIT

BEGIN C0X1ELF3

CHAIN IF WEIGHT #-1 ~True()~ THEN C0X1ELF3 pguard1
~Welcome, hero.~
END
  ++ ~May I enter the palace?~ + pguard1.1
  ++ ~Farewell.~ EXIT

CHAIN C0X1ELF3 pguard1.1
~Of course. The Queen has stated you are to be given specific permission. Please be respectful while within.~
EXIT

BEGIN C0X1MER1

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1MER1 merchant1
~Hail, <CHARNAME>. Hwyn of the Elven High Mages, here to serve. Do you require magical scrolls or potions? The Queen has declared that you are to be given access to all but our most secret caches of magical knowledge.~
END
  ++ ~I would like to see what spells you have available.~ DO ~StartStore("C0X1MER1",Lasttalkedtoby)~ EXIT
  ++ ~Perhaps another time.~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1MER1 merchant1-1
~Greetings again. What can I do for you?~
END
  ++ ~I would like to see what spells you have available.~ DO ~StartStore("C0X1MER1",Lasttalkedtoby)~ EXIT
  ++ ~Perhaps another time.~ EXIT

BEGIN C0X1HLE1
BEGIN C0X1HLE2

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",0)~ THEN C0X1HLE1 special1
~I just made it a few days ago. They really did a number on this place... too bad I missed out on everything. The Exile's lucky I never got a chance to get my hands on him.~
DO ~SetGlobal("C0X1SpecialTalk","GLOBAL",1)~
== C0X1HLE2 ~Oh, you're just talking big like always. You would've been toast if you really were here... not that I personally know what it's like, either. I was off fighting the drow when... all this happened.~
== C0X1HLE1 ~I heard some strangers from the outside came and saved the city. Is it true? I thought people were just trying to fool me again, after how long I've been away.~
== C0X1HLE2 ~No one has the time or energy for that right now, you silly. It's all true. Queen Ellesime honored them herself right in front of everyone.~
== C0X1HLE1 ~Speaking of which... I haven't seen the Queen at all since I got back. Has she really shut herself in the palace for several days now? That's a bit much, even for her.~
== C0X1HLE2 ~Shh! You shouldn't be talking like that. Everyone's going to give you the glares again... anyway, just what *have* you been getting into out there? You'd better have some exciting magical loot to show me.~
== C0X1HLE1 ~Heheh! Oh, do I have any. Just you wait...~
DO ~FaceObject("C0X1HLE2")
ActionOverride("C0X1HLE2",FaceObject("C0X1HLE1"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",0)~ THEN C0X1HLE2 special2
~You're finally back! Do you have any idea what things have been like here recently? I should consider myself lucky we can even talk to each other!~
EXTERN C0X1HLE1 special1

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",1)~ THEN C0X1HLE1 special3
~By the way, feel like grabbing a bite together in a moment? I haven't had the pleasure of the old familiar dishes in too long. I'm starving.~
DO ~SetGlobal("C0X1SpecialTalk","GLOBAL",2)~
== C0X1HLE2 ~Sure! We've got a lot of catching up to do. Besides, you have to try out the new parfait. It's to die for... mmm.~
== C0X1HLE1 ~Speaking of which, there was a new sort of exotic cuisine I tried not too long ago that I thought you should try out. I'm not quite sure what goes into it, but I know it includes parts of elder br—~
== C0X1HLE2 ~Nope! Not listening to this!~
== C0X1HLE1 ~You sure? It tastes a lot better than it sounds. And looks, though you'd have to be there to—~
== C0X1HLE2 ~I don't care, I don't want to hear it! I still haven't forgiven you yet for that time you got me trying that one dish including SLIMES!~
== C0X1HLE1 ~Suit yourself. Sweets it is, then.~
DO ~FaceObject("C0X1HLE2")
ActionOverride("C0X1HLE2",FaceObject("C0X1HLE1"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",1)~ THEN C0X1HLE2 special4
~A spell for scrubbing pots and pans, really? That's... not very exciting, but sure useful. I could do with a copy of that.~
EXTERN C0X1HLE1 special3

BEGIN C0X1ELLE

CHAIN IF WEIGHT #-1 ~Global("C0X1Ellesime","GLOBAL",0)~ THEN C0X1ELLE ellesime
~Ah... it's you, <CHARNAME>. I'm relieved to see you finally free from the scrutiny of the priests.~
DO ~SetGlobal("C0X1Ellesime","GLOBAL",1)~
== C0X1ELLE ~I presume this means... it is over, for certain. Jon—he is gone. And you are finally free.~
END
  ++ ~As free as one tainted by Bhaal's blood can be, I suppose.~ + ellesime.1
  ++ ~I have my soul back. Though considering the its nature, I cannot say I am truly free.~ + ellesime.1
  ++ ~Thank you for all you've done for me and my companions during this time, Queen Ellesime. I've enjoyed my stay here.~ + ellesime.2
  ++ ~Free, and here for my reward. It's long overdue, after everything I've done for you despite your foolishness.~ + ellesime.3

CHAIN C0X1ELLE ellesime.1
~Yes, that is true... though your soul is securely within you once more, it does not make you truly safe even now. It is a heavy burden you bear... perhaps far greater than my own. I cannot help but envy your strength.~
= ~I hope you have at least found some measure of peace in the time you have spent in the city. Though you have experienced only a part of the true beauty of our home, untainted by bloodshed, we have done our utmost to help your body and mind to heal after your ordeals.~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.2
~It is but a fragment of what you truly deserve after all of your heroism and sacrifice, <CHARNAME>. After all... no amount of restitution could make up for the unspeakable suffering you have endured as a result of our... my lack of foresight.~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.3
~Of course. For everything you have done and suffered due to our mistakes, you are worthy of no less than riches beyond your wildest dreams, and more. Our treasurers have left a suitable reward where you were resting... if that is not enough, there will be more to come.~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.4
~The events of the past month have given me much to think of... I have not left the palace ever since the end of the conflict. At first, I deluded myself into believing it to be some form of penance, but it is evident that I am merely hiding away from my doubts, and neglecting my duties as queen.~
= ~You must find my state to be a disappointment. The high queen of an ancient people, chosen of Rillifane... first seen as a prisoner to the very enemy I created, and now cowering in my home like a child fearing reprisal... there is no need to hold back any contempt you feel, <CHARNAME>. I deserve that and more.~
END
  ++ ~What you feel is the same as anyone in your position would. There's no shame in it.~ + ellesime.5
  ++ ~You made a mistake, one with terrible consequences. But the damage is done, and I have regained my soul. As long as you never repeat your mistakes, I can forgive you.~ + ellesime.5
  ++ ~I won't deny that I feel some resentment towards you, and for good reason. However, I can see you're truly remorseful. I can't bring myself to hold onto my hate.~ + ellesime.5
  ++ ~If you want to make up for what you've done, then simply reward me with the power and wealth I desire. Words are meaningless.~ + ellesime.6
  ++ ~Because of you, I nearly died several times, lost several friends on the way, and had to suffer the agony of losing my soul. There aren't enough words that would serve for how angry I am.~ + ellesime.7
  ++ ~You pathetic woman. After all that your foolishness wrought, you have the nerve to hide away here and beg for sympathy. You'll receive none from me.~ + ellesime.7

CHAIN C0X1ELLE ellesime.5
~Your capacity to forgive is more than I could ever deserve, <CHARNAME>. And to think, I once fell prey to the delusion that I was merciful for the sentence I wrought upon Joneleth... how shortsighted I was. Because of me, you shared in his suffering, and yet unlike him, I can see you never gave in to the darkness, despite your heritage.~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.6
~Wealth and power I can give you, <CHARNAME>, and it would be a simple matter. Perhaps too simple... it is a far easier task than hoping to believe that you will have truly forgiven me.~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.7
~Few would dare to speak so directly, so true to their anger, to a queen, <CHARNAME>. Perhaps none other than... Joneleth himself. You are more like him... who he once was, than you realize.~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.8
~Regardless of how you feel, <CHARNAME>, to share in your company so briefly pleases me regardless. Past the requirements of my station, I was not certain I was even willing to face you... yet it was easier than I expected.~
= ~In any case, there is a more joyous occasion at hand, I presume you have already been informed that the Festival of the Bloom is soon to begin. Though it is a desperate effort, I hope it may restore the spirits of my people, crushed as it may be.~
= ~It is customary that I speak to all present on the final day, and at that time, I hoped that you might step forth as a guest of honor, so that all might know the face of the saviour of our city.~
= ~However, should you desire to continue your travels instead, I may arrange to accommodate your departure from the city... in fact, I may be able to guide you towards your next ideal destination.~
= ~The choice is yours to make, <CHARNAME>. We have been gifted with a moment of peace, fragile though it may be. I would be honored by your prolonged stay, but I understand that you have a grim destiny ahead of you... if you choose to face it now, that may be for the best.~
END
  + ~Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~Where do you suggest that I go next?~ + ellesime.9
  ++ ~I would be delighted to take part in the festival.~ + ellesime.10
  ++ ~A celebration does not interest me, but I still have unfinished business in Amn. I intend to stay in the region for now.~ + ellesime.11

CHAIN C0X1ELLE ellesime.9
~If you seek to continue your fated journey... there is a sacred grove deep within the Forest of Tethir, hidden to all but those who know the path. The knowledge has been held as a secret reserved for the royal bloodline of Suldanessellar.~
DO ~SetGlobal("C0X1EllesimeGrove","GLOBAL",1)~
= ~There, many ancient spirits of elvenkind, holding the knowledge of our people from an age long before even I remember, may be able to bestow their wisdom upon you, and enlighten you as to what course you must take in order to meet your destiny as a Bhaalspawn.~
= ~The Seldarine, like all gods, are forbidden from directly intervening in those of your divine heritage, but I have communed with them, and it is certain that conflict will rise once more as other Bhaalspawn seek to ascend, just as your fallen brother Sarevok once attempted. Whether you seek to take your place in their contest, or merely to survive, the assistance of my ancestors may be of use to you.~
= ~Should you wish to travel to the grove, I am willing to guide you there personally. You have only to ask at any moment.~
END
  ++ ~I want to go now. It's time to face the next part of my destiny.~ + ellesime.12
  ++ ~My own problems can wait. I'm interested in attending the festival.~ + ellesime.10
  ++ ~There's still things I have to do here in Amn before I'm ready to leave.~ + ellesime.11

CHAIN C0X1ELLE ellesime.10
~Then I shall personally see to my part of the preparations. Remember, I hope you may take part in the ceremony on the final day, <CHARNAME>.~
EXTERN C0X1ELLE ellesime.13

CHAIN C0X1ELLE ellesime.11
~As you wish. The path to Suldanessellar will remain open to you and those who follow you, <CHARNAME>.~
EXTERN C0X1ELLE ellesime.13

CHAIN C0X1ELLE ellesime.12
~So be it. I wish you well in advance on your journey, <CHARNAME>, for it will no doubt be an arduous one. But before we leave... I have something I wish to give to you with my own hands.~
== C0X1ELLE ~The Amulet of the Seldarine... one of the greatest gifts that we may offer to an outsider. I had hoped to place it on you personally on the final day of the festival, as a symbol of my gratitude. But as you will be leaving soon, that will become impossible now.~
== C0X1ELLE ~Come with me. I shall lead you to the grove, where your future may be revealed to you.~
DO ~SetGlobal("soa_complete","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1END")~ EXIT

CHAIN C0X1ELLE ellesime.13
~Tomorrow, the Festival of the Bloom shall begin. Whether it is your will to stay or go, I am prepared to assist you in your next course of action. For now, you should attend to whatever matters you have at hand. Farewell, <CHARNAME>.~
EXIT

BEGIN C0X1ELL2

CHAIN IF WEIGHT #-1 ~Global("C0X1EllesimeToB","GLOBAL",0)~ THEN C0X1ELL2 ellesimetob
~We now stand before the ancient grove of my people. What you see before you are the resting places of my ancestors, their spirits residing within the carved stone heads throughout this area.~
DO ~SetGlobal("C0X1EllesimeToB","GLOBAL",1)~
= ~None other than elven royalty have set foot in this sacred ground for as long as I remember. But the spirits have sensed my presence as we entered, and will respond when you petition them for their wisdom.~
= ~There are ancient wards set in the outskirts of the forest, which will ensure that your communion goes uninterrupted. Whatever course is the wisest for you to take, you will undoubtedly learn here... whether it be for good or ill.~
= ~I can do little more for you, <CHARNAME>, but pray for your good fortune in your remaining journey. Farewell, and may you return one day free from your destiny.~
DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Ellesime","GLOBAL",1)~ THEN C0X1ELLE ellesime22
~I see you have returned, <CHARNAME>. You are welcome here, as always. Is there something you require?~
END
  + ~Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~I'd like to know about the place you spoke of, where my next path might be shown to me.~ + ellesime.9
  + ~!Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~I would like to go to the grove you mentioned.~ + ellesime.12
  ++ ~Not at the moment, Queen Ellesime.~ + ellesime.14

CHAIN C0X1ELLE ellesime.14
~Then I wish you good fortune, <CHARNAME>.~
EXIT

BEGIN C0X1CAPT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1CAPT captain
~<CHARNAME>. It is good to see you in good health. Forgive me, but I have drills to attend to. The war may be over, but the experience has proven we have much improvement to work towards.~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~Where is Elhan? I thought he'd attend to matters concerning your soldiers.~ + captain.1
  ++ ~I'll leave you to it then, captain.~ DO ~Face(SE)~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1CAPT captain1
~Good <DAYNIGHTALL>, <CHARNAME>.~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~Where is Elhan? I thought he'd attend to matters concerning your soldiers.~ + captain.1
  ++ ~I'll leave you alone, captain.~ DO ~Face(SE)~ EXIT

CHAIN C0X1CAPT captain.1
~The commander is... currently recovering from the injuries he sustained during the defense of the city.~
== C0X1CAPT ~...No, I fear that is only half the truth. I know him well enough to understand that he would undoubtedly be here so long as he could walk, especially after what has happened. It was the high pr... the priests who insisted he remain at his home until his healing is fully complete.~
== C0X1CAPT ~I should not ask you to disturb him, but if you have any intention of seeing him, he is at the House of the Talisman. I am concerned about his current state, of mind rather than body. Especially if 'she' is there right now...~
== C0X1CAPT ~Forgive me, I have spoken too much. I must return to the drills.~
DO ~Face(SE)~ EXIT

