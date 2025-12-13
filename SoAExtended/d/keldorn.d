BEGIN C0X1NPC1
BEGIN C0X1NPC2

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
InParty("KELDORN")
See("KELDORN")
Global("C0X1MariaQuest","GLOBAL",0)~ THEN MARIA maria
~My dear husband... you have returned at last. And from your worn expression, I can see your quest has been a difficult one indeed.~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",1)~
== KELDORJ IF ~Global("C0X1KeldornWasInHell","GLOBAL",1)~ ~Aye, to the Hells and back, and more precisely than I ever could have imagined...~
== KELDORJ IF ~!Global("C0X1KeldornWasInHell","GLOBAL",1)~ ~Aye, truly it has been a mission beyond any I have faced in the past...~
== KELDORJ ~But it is finally over, and I may fulfill my promise to you at last, my love. I am home.~
== MARIA ~And... this time, are you here to stay?~
== KELDORJ ~I...~
END
  ++ ~Go on, Keldorn. You've fulfilled your promise. It's time for your well-deserved rest.~ EXTERN KELDORJ maria.1
  ++ ~It's your choice, my friend. I would like you to stay, but I cannot force you.~ EXTERN KELDORJ maria.1
  ++ ~Irenicus is dead, but my destiny is not over yet. I could still use you.~ EXTERN KELDORJ maria.1


CHAIN KELDORJ maria.1
~Maria, I—~
== MARIA ~No, please do not explain, my love. I think I understand.~
== MARIA ~I have thought deeply of all that has occurred... since the truth between us was revealed, I have realized the depths of how terrible our mistakes have been... and from my reflections, I have come to understand that as you are, even were you to ignore your deepest doubts and stay with me, you would undoubtedly come to regret it when your duty is not truly fulfilled.~
== MARIA ~And... I can see that you have forged a true bond of camaraderie with your leader <CHARNAME>, far beyond any of your past brothers-in-arms that I have met... you would not rest easy if you abandoned <PRO_HIMHER> now, of all times.~
== KELDORJ ~I... I cannot deny it. From our journeys together, I have felt a sense of responsibility to <PRO_HIMHER>, as a trusted friend, and one in need. But if it must come to opposition with that which I hold to you, dearest, then I must—~
== MARIA ~Go with <PRO_HIMHER>, Keldorn.~
== KELDORJ ~What?~
== MARIA ~I wish in my heart that you could stay, truly... but I know you cannot ever truly feel free from your duty, even when released from it. Even here, I have heard tales of the dangers rising in the south, of what is to come... if it will bring you true, lasting peace to see the end of things, then I beg of you, go. It is who you are, and the man I love could be no less.~
== KELDORJ ~Maria, I... thank you, my love...~
== MARIA ~But, promise me... promise that you will come back. Come back to me alive, that is all I ask.~
== KELDORJ ~I will.~
== MARIA ~Then I will pray for your success on your journey, and your safe return...~
== MARIA ~Ah, but before you go, my love, you have not forgotten an important occasion, have you? Vesper's birthday is soon.~
== KELDORJ ~I have not forgotten... I regret I may not be present to celebrate it with her, and all of you... but I wish to do something for her nonetheless.~
== MARIA ~While you are still here... give her a gift. The act itself will please her, even if she will miss your presence.~
== KELDORJ ~Of course. Before I leave the city, I will do so immediately, as poor a compensation as it is.~
== MARIA ~I trust you already know what to give her?~
== KELDORJ ~Aye, that I do. <CHARNAME>, if it is not too much to ask... shall we travel to the Promenade together?~
END
  ++ ~Of course. We have more than enough time on our hands now, after all.~ EXTERN KELDORJ maria.2
  ++ ~Fine, as long as we make it quick.~ EXTERN KELDORJ maria.2
  ++ ~This seems like a simple thing to do without me. Let's split up for now.~ EXTERN KELDORJ maria.3
  ++ ~I have no interest in dealing with your family matters. Do it yourself.~ EXTERN KELDORJ maria.3

CHAIN KELDORJ maria.2
~Thank you, my friend... to Enge's, then. What I seek, if it is within Athkatla, will most likely be found there.~
EXIT

CHAIN KELDORJ maria.3
~So be it, then... allow me a day, <CHARNAME>, and I will meet you here once my personal affairs are dealt with. Farewell for now.~
DO ~SetGlobalTimer("C0X1MariaQuestSkip","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
SetGlobal("C0X1MariaQuest","GLOBAL",12)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",2)~ THEN KELDORJ maria2
~Here we are. <CHARNAME>, if I might ask you to browse the wares with me...~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
Wait(1)
ActionOverride(Player1,MoveToPoint([669.286]))
ActionOverride(Player1,Face(NE))
MoveToPoint([636.275])
Face(NE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",3)~ THEN KELDORJ maria3
~It has been some time since I have had the opportunity to spare for such informal matters. Between my service to the Order, as well as to you, I have long forgotten what it is like to live as an ordinary man.~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",4)~
END
  ++ ~I'm sorry for asking you to stay with me all this time. You have a right to be with your family.~ + maria3.1
  ++ ~You still have the choice. Now that Irenicus is defeated, your service is rightfully over.~ + maria3.1
  ++ ~What exactly are we looking for?~ + maria3.2

CHAIN KELDORJ maria3.1
~Nay, <CHARNAME>, do not feel responsible for my choices. After what I have seen during my time within your company... I have only become further affirmed that my choice, though difficult, may have been the right one.~
== KELDORJ ~Few could know of the trials of the sort you have faced, and fewer still who may shoulder its weight. Those such as yourself deserve the aid that I may give... that, after all, is why I have chosen the life I lead.~
== KELDORJ ~I have become a participant in the journey towards the destiny that awaits you, and such a road is not easily departed from. My heart may yearn for peace, but until I can see the safety of your own peace is ensured, I doubt I will rest easy.~
== KELDORJ ~Now, enough of this for now. Let us attend to the matter of my daughter's birthday gift.~
EXTERN KELDORJ maria3.2

CHAIN KELDORJ maria3.2
~The gift I am searching for... it is an exotic fruit of Malatra, purple in color and slightly smaller than a normal man's fist in size. During one of my missions for the Order, I received a bundle as a gift from a Malatran trader whom I and my fellows aided.~
== KELDORJ ~It is not customary for those of the Order to accept rewards for our service, but the man was exceptionally insistent, and it seemed an insult to refuse... I was still a younger man at the time, my duties less strict, and I had more chances to return to my family.~
== KELDORJ ~The fruit that was not shared with my brothers, I brought home, and Vesper took a particular liking to them, and for the first time was eager to hear the details of my work, to learn the tale of how I acquired them.~
== KELDORJ ~Ever since then, I have come once every year to see if they can be found in the city's markets. Some years they are, others not... but no matter how slight the chance, so that I might recapture some semblance of that moment of joy. It seems there are none this year, however...~
== KELDORJ ~Excuse me, sir. Are there "Queen-of-fruit" in stock, perchance?~
== SHOP04 ~"Queen-of-fruit"? No, milord, ve are not havink any zis season. My suppliers have been saying ze importink vas too expensive zis year, you see. None here vithin ze city, sadly. Perhaps in Trademeet, they be havingk some, ja.~
== KELDORJ ~Trademeet... I see. Thank you, sir. That is all I needed to ask.~
== KELDORJ ~Forgive me, <CHARNAME>... it seems this small errand will take longer than expected. I intend to go to Trademeet to see if what I seek may be found there. If it is acceptable, I may go alone, and meet you again at my estate within a day.~
END
  ++ ~No, let's go together. I have nothing better to do now, anyway.~ + maria3.3
  ++ ~Alright. I'll meet you at your home tomorrow, then.~ + maria.2

CHAIN KELDORJ maria3.3
~So be it. To Trademeet, then.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",5)~ THEN KELDORJ maria4
~May Waukeen's blessings be upon you today, good woman. Have you any "queen-of-fruit" for sale, if I may ask?~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",6)~
== C0X1NPC1 ~"Queen-of-fruit", is it? Why, you're in luck, milord, I have just received my seasonal shipment not so long ago. I have plenty in stock, fresh as though picked right off the tree! How many would you like to purchase?~
== KELDORJ ~Hmm. Bring out your largest sack, madam, and fill it with as many as it may hold.~
== C0X1NPC1 ~It shall be done, milord. That will no doubt be enough for your whole family to enjoy for a week, if not more. Just give me a few moments to fill and weigh the bag, and I can inform you of the price...~
== KELDORJ ~Once again, I appreciate that you were willing to accompany me for such a trivial matter, <CHARNAME>.~
END
  ++ ~You've done so much for me. This barely counts towards repaying the favor.~ + maria4.1
  ++ ~This fruit must be worth all this trouble. Perhaps I'll sample a few for myself.~ + maria4.2
  ++ ~The sooner we get this over with, the better.~ + maria4.3

CHAIN KELDORJ maria4.1
~Ha! True enough, I cannot deny that. Would that all such debts could be repaid so easily...~
EXTERN KELDORJ maria4.3

CHAIN KELDORJ maria4.2
~It is a touch saccharine for my own palate, though perhaps in my age, I may yet develop an appreciation for it. I should not forget to treat you to some as well, whilst we have the opportunity...~
EXTERN KELDORJ maria4.3

CHAIN KELDORJ maria4.3
~This should not take too much longer. Once I have paid the seller, we may return to my daughter, and I will have performed part of my role as father at last. Then...~
== KELDORJ ~Wait. Do you see that, <CHARNAME>?~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreature("C0X1NPC2",[2620.2632],NW)
CreateCreature("C0X1NPC3",[2633.2647],NW)
Wait(1)
Face(NE)
SmallWait(5)
ActionOverride(Player1,Face(NE))
SmallWait(5)
MoveViewPoint([2623.2655],STANDARD)
Wait(5)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",6)~ THEN KELDORJ maria5
~*sigh* It appears that such petty misdeeds must always occur within our sight no matter the day and age. No rest for the wicked, nor for those whom must stop them...~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",7)~
== KELDORJ ~Wait here a moment, <CHARNAME>. I will have this dealt with quickly enough.~
DO ~ClearAllActions()
StartCutSceneMode()
MoveViewPoint([2623.2655],STANDARD)
MoveToPoint([2589.2683])
Wait(1)
FaceObject("C0X1NPC3")
Wait(1)
ActionOverride("C0X1NPC2",FaceObject("KELDORN"))
ActionOverride("C0X1NPC3",FaceObject("KELDORN"))
Wait(2)
ActionOverride("C0X1NPC3",EscapeArea())
FadeToColor([30.0],0)
MoveToPoint([2914.2473])
Wait(1)
ActionOverride("C0X1NPC3",DestroySelf())
JumpToPoint([2667.2647])
ActionOverride("C0X1NPC2",FaceObject("KELDORN"))
FaceObject("C0X1NPC2")
FadeFromColor([30.0],0)
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",7)~ THEN KELDORJ maria6
~Your purse, sir. I hope its contents are as you expect them to be.~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",8)~
== C0X1NPC2 ~Th—thank you, good knight! I owe my savings to your fortuitous presence! Please allow me to repay—~
== KELDORJ ~Nay, sir. It is my duty, and I accept your gratitude, but I cannot demand a reward for such a deed. It is what any decent man should have done, were they in my place.~
DO ~ClearAllActions()
StartCutSceneMode()
FaceObject("C0X1NPC2")
FadeToColor([30.0],0)
Wait(2)
ActionOverride("C0X1NPC2",DestroySelf())
JumpToPoint([2313.2822])
FadeFromColor([30.0],0)
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",8)~ THEN KELDORJ maria7
~My apologies for the delay, <CHARNAME>. It was regrettable that I needed to intervene there.~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",9)~
END
  ++ ~What happened to the thief?~ + maria7.5
  ++ ~You did a good thing. There's hardly a need for regrets.~ + maria7.1
  ++ ~Most wouldn't have even bothered to get involved in something so minor.~ + maria7.2
  ++ ~Whatever. I have your fruits. Let's get going.~ + maria7.4

CHAIN KELDORJ maria7.1
~You misunderstand me, <CHARNAME>. I regret that no matter the good done under our name, it appears that misdeeds will spawn regardless, both large and small. Such is the world.~
EXTERN KELDORJ maria7.3

CHAIN KELDORJ maria7.2
~Perhaps minor for those of our status. But to those harmed by such misdeeds, no matter how simple the motivations, it may affect their lives in ways we cannot hope to imagine.~
EXTERN KELDORJ maria7.3

CHAIN KELDORJ maria7.3
~It seems that I cannot help myself, <CHARNAME>. When the call to action finds me, I will unfailingly rise to the occasion, no matter how great or small the duty.~
== KELDORJ ~My honor tells me that it is for the greater good. My heart knows that it is my guilt for seeking comfort in my own peace, while I know others continue to suffer without those ready to answer their cries.~
== KELDORJ ~Once again... please do not feel responsible for keeping me at your side, my friend. Regardless of your need, my actions are my own choice, none other's.~
EXTERN KELDORJ maria7.4

CHAIN KELDORJ maria7.4
~Now then, let us return home, now that my own task is complete.~
EXIT

CHAIN KELDORJ maria7.5
~He was but a young lad. I saw in his eyes he merely lacked the perspective to understand the harm he was truly doing. A firm warning and the right incentive not to repeat his mistakes was more than enough.~
EXTERN KELDORJ maria7.3

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
InParty("KELDORN")
See("KELDORN")
Global("C0X1MariaQuest","GLOBAL",9)~ THEN MARIA maria8
~My love, I see you have returned, and with great success.~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",10)~
== KELDORJ ~Indeed. It was a remarkably simple task, this time... rarely can I say that with such honesty.~
== MARIA ~Vesper is waiting for you. You should show her what you have... ah, but make sure you not forget a bowl, first.~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
IsGabber("KELDORN")
Global("C0X1MariaQuest","GLOBAL",10)~ THEN VESPER vesper
~Father! You're finally back!~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",11)~
== KELDORJ ~Yes, my dear. I am... with your favorite gift in tow, at that.~
== VESPER ~Are those... the "queen-of-fruit"? Oh, Father! It's been three years since the last time you brought them home!~
== KELDORJ ~Has it truly been so long? Yes, I suppose it must have... do you still remember the stories I told you the first time?~
== VESPER ~Yes, I do. But you must surely have so many more to tell now... won't you stay just a bit longer and tell me all of them?~
== KELDORJ ~...~
== LEONA ~Father...~
== KELDORJ ~My dear child, I am truly sorry... your father has broken his promise to you once again.~
== VESPER ~I...~
== VESPER ~I understand, Father. You... you need to see this one's ending, first. I know it's important to you... and that means it's important to us, too. I can wait... I'll be a good girl, just like you taught me. I promise.~
== KELDORJ ~Thank you... you are a very good girl, Vesper. I am truly blessed to have daughters like the two of you.~
== VESPER ~Just... please come back, Father. I can live with you not being with us... but don't die. Please, promise us you won't die.~
== KELDORJ ~...Of course, I promise. I cannot fall, not when I have you waiting for me. Farewell, dear daughter. And, though it is early... I wish you a happy birthday.~
== VESPER ~Thank you, Father. And goodbye... we're all waiting for you...~
DO ~AddXPObject("Keldorn",15000)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",13)~ THEN KELDORP keldorn.end
~I am here, as I promised, <CHARNAME>. My farewells have been spoken, and your journey awaits. I trust you still desire my aid?~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",14)~
END
  ++ ~Let's go, then.~ DO ~JoinParty()~ EXIT
  ++ ~Actually... there's still time before the next step of my road. When the time comes, I will call on you, Keldorn. Until then, enjoy your time with your family.~ + keldorn.end.1

CHAIN KELDORP keldorn.end.1
~Aye, as you wish... I will treasure this time, whether it be lasting or brief. Until the time comes, <CHARNAME>. Do not hesitate to ask.~
EXIT