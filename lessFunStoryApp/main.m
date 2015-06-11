//
//  main.m
//  lessFunStoryApp
//
//  Created by Daniel Distant on 6/9/15.
//  Copyright (c) 2015 ddistant. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        
        */
         
        
        //Get user name and print it back
        
        char name[256];
        
        printf("What is your first name?\n");
        
        scanf("%s", &name);
        
        printf("\nAh, so you are %s the great warrior. ", name);
        
        //Ask for challengeAnswer
        
        printf("You must slay the dragon of Thorne and save the Princess. I hope you are up to the task! Do you accept this challenge?\n\n-'yes'\n\n-'no'\n\n");
        
        char challengeQuestion[256] = "yes";
        
        char challengeAnswer[256];
        
        scanf("%s", &challengeAnswer);
        
        if (strcmp(challengeQuestion, challengeAnswer) == 0) {
            
            printf("\nGood luck, brave soul.\n\n");
            
        } else {
            
            goto endGame;

        }
        
        //Dark Forest or Red River
        
        printf("There are two ways to get to the Dragon's Lair. You can go through the Dark Forest or raft down the rough and roiling Red River. Which shall it be?\n\n-0 for Dark Forest \n\n-1 for Red River\n\n");
        
        int darkForestOrRedRiver;
        
        scanf("%d", &darkForestOrRedRiver);
        
        //Dark Forest
        
        if (darkForestOrRedRiver == 0) {
            
            printf("\nThe Dark Forest turns out to be really dark. You’re being attacked by what sounds like bats, but you can’t see to fight them off. How do you make light?\n\n-0 Grab kindling and light a fire\n\n-1 Cast an illumination enchantment, which you can totally now do as a warrior mage\n\n");
            
            //kindling or enchantment
            
            int kindlingOrEnchantment;
            
            scanf("%d", &kindlingOrEnchantment);
            
            //kindling
            
            if (kindlingOrEnchantment == 0) {
                
                printf("\nThe Dark Forest is set ablaze by your hasty embers. You're forced to escape to the Red River.\n");
                
                goto redRiver;
                
            } else {
                
            //DarkForest2 | Ogre fight, run or steal gold
                
            darkForest2:
                
                printf("\nFurther into the forest, you see a hulking, grey ogre. He is sleeping soundly, but underneath him you spy bags of gold. Do you \n\n-0 steal the gold \n\n-1 wake up the ogre for a fight \n\n-2 walk by it\n\n");
                
                int ogreStealFightRun;
                
                scanf("%d", &ogreStealFightRun);
                
                //steal gold from ogre
                
                if (ogreStealFightRun == 0) {
                    
                    printf("\nDelicately, gently, with the hands of a warrior mage thief, you pluck one bag of gold from the ogre’s grasp. The monster starts to rouse, so you move on, the end of the Dark Forest in sight.\n\n");
                    
                    BOOL gold = YES;
                    
                //wake ogre up for fight
                           
                } else if (ogreStealFightRun == 1) {
                    
                    printf("\n'Ever hear about %s, the warrior who woke up the sleeping ogre?'\n\n'Oh yeah, smashed to bits, I hear. Apparently got that smart idea from some guy learning Objective-C.'\n\n'That’s what happens when you bother a sleeping — I’m sorry, what in the name of Greyfang’s beard is Objective-C?'\n\n'It’s a long story, my friend.'\n\n'Well I’ve got the time. I asked, didn’t I?'\n\n'No, dammit, Larry, there’s a whole rest of the game to go through, we don’t have time for this!'\n\n'Fine!'\n\n", name);
                           
                    goto endGame;
                    
                //walk past ogre
                    
                } else {
                    
                    printf("\nYou creep silently by, the end of the Dark Forest in sight.\n");
                    
                    BOOL gold = NO;
                }
            }
            
        //Red River
            
        } else if (darkForestOrRedRiver == 1) {
            
        redRiver:
            
            printf("\nThe river rolls and pitches as you try to stay steady on your raft. Up ahead you see an enormous dam that you are fast approaching. How will you avoid smashing into it?\n\n-0 Use a stick to slow yourself down\n\n-1 Grab onto the vines hanging down\n\n");
            
            //stick or vines
            
            int stickOrVines;
            
            scanf("%d", &stickOrVines);
            
            if (stickOrVines == 0) {
                
                //stick
                
                printf("You use your trusty bo staff and drag it against the bottom of the river. There's something tugging at the stick, and suddenly you are pulled into the raging waves! A huge, reddish crocodile surfaces, and the last thing you see are his gleaming teeth before he takes a bite of your hiney. (And no one can survive without a hiney.)");
                
                goto endGame;
                
                //vines
                
            } else {
                
                printf("\nYou jump and grab onto the low-hanging vines above the river. The force of the water smashes the raft into the dam, and it is quickly submerged underneath the steamy depths.\n\n");
                
                //platypus question
                
                printf("An enormous platypus comes out from behind the dam, its beady eyes locking with yours. 'I demand to know why you are here!' it screams, sounding exactly how you'd think a platypus would sound. What do you say?\n\n-0 'To slay the dragon and save the princess'\n\n-1 'I brought you a gift'\n\n-2 Launch into a cover of Aretha Franklin's 'RESPECT'\n\n");
                
                int platypusQuestion;
                
                scanf("%d", &platypusQuestion);
                
                if (platypusQuestion == 0) {
                
                    //'slay the dragon and save the princess'
                    
                    printf("\n'Well I won’t let that happen!' it growls while thwacking you with its tail. You barely manage to fight him off, and you’re forced to escape into the nearby Dark Forest.\n");
                    
                    goto darkForest2;
                    
                    //'I brought you a gift'
                    
                } else if (platypusQuestion == 1) {
                    
                    printf("\n'I brought you a gift,' you say. Thinking quickly, you snatch up a nearby rock. 'It’s rock candy, a delicacy from the distant lands of, um, Wal-Mart.' The platypus snatches up the rock candy and devours it, choking to death ... but it's not like it was cute, so you don’t have to feel bad about it.\n");
                    
                    BOOL gold = NO;
                    
                    //'Respect' by Aretha Franklin
                    
                } else {
                    
                    printf("\n'R-E-S-P-E-C-T, find out what it means to me,' you belt out. 'R-E-S-P-E-C-T, take care …' um, what were those three letters again?\n\n");
                    
                    char platypusRespectQuestion[256] = "tcb";
                    
                    char platypusRespectAnswer[256];
                    
                    scanf("%s", &platypusRespectAnswer);
                    
                    if (strcmp(platypusRespectQuestion, platypusRespectAnswer) == 0) {
                        
                        printf("\n'You have a terrible voice, but I do like that song, warrior poet!' the platypus says. It applauds you and gives you a bag of GOLD. Shiny!\n");
                        
                        BOOL gold = YES;
                        
                    } else {
                        
                        printf("\n'You have the voice of an angel ... but you screwed up the words!' the creature bellows. It thumps you on the head with his dull beak and cooks you up into a savory human stew. On the plus side, you taste pretty good with some salt and pepper!\n");
                    
                        goto endGame;
                        
                    }
                }
            }
        }
        
        //oldBridge
    
        printf("\nAn old, rickety bridge lies between you and the castle entrance. It looks very unstable. How do you cross?\n\n-0 Use a grappling hook to get across\n\n-1 Walk across verrrryyyyyyyyyyy slooowwwwwllllyyyyyyyyy\n\n-2 Cast a protection and levitation spell on yourself, but still walk across carefully because you don’t want to test your luck\n\n");
        
        int oldBridge;
        
        scanf("%s", &oldBridge);
        
    oldBridge:
        
        //grappling hook
        
            if (oldBridge == 0) {
            
            printf("\nYou don’t have a grappling hook. what in the name of Fenrir's tooth would give you that idea?\n\n");
                
                goto oldBridge;
                
                //very slowly
                
            } else if (oldBridge == 1) {
                
                printf("\nThe slower you walk, the creakier this bridge gets. You scoot backwards before it completely snaps in half. Now what?");
                
                goto oldBridge;
                
                //protection and levitation spell
                
            } else if (oldBridge == 2) {
                
                printf("\nJust as you get near the end of the bridge, a gigantic red-tailed hawk dive-bombs the structure, cracking it in half. Because of your spell, you’re able to moonwalk the last few steps to the other side.\n\nIn hindsight, it probably would have been good to cast that spell earlier.\n\n");
    
            }
        
    endGame:
        
        printf("\nTHE END");
        
    }
    return 0;
}
