//
//  AppDelegate.m
//  arrays
//
//  Created by Admin on 08.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppDelegate.h"
#import "Runner.h"
#import "Cyclist.h"
#import "Swimmer.h"
#import "Student.h"
#import "Cat.h"
#import "Dog.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Uchenik
    
    Runner* runner1=[[Runner alloc]init];
    Cyclist* cyclist1=[[Cyclist alloc]init];
    Swimmer* swimmer1=[[Swimmer alloc] init];
    /*
    NSArray* humans=[NSArray arrayWithObjects:runner1,cyclist1,swimmer1, nil];
    for (Human* person in humans) {
        
        NSLog(@"name: %@, height: %.2f m, weight: %.2f kg, sex: %@",person.name, person.height, person.weight,[self sexDefine:person.sex] );
        [person move];
    }
    */
    //Student
    Student* student1=[[Student alloc] init];
    NSArray* humans2=@[runner1,cyclist1,swimmer1,student1];
    for (NSInteger i=[humans2 count]-1; i>=0; i--) {
        Human* personInner=[humans2 objectAtIndex:i];
        NSLog(@"name: %@, height: %.2f m, weight: %.2f kg, sex: %@",personInner.name,personInner.height,personInner.weight,[self sexDefine:personInner.sex] );
        if ([personInner isKindOfClass:[Student class]]) {
            Student* goodStudent=(Student*)personInner;
            NSLog(@"city: %@, university: %@",goodStudent.city,goodStudent.university);
        }
        [personInner move];
    }
    
    //--------------
    //end of Student
    
    
    //Master
    Cat* cat1=[Cat new];
    Dog* dog1=[Dog new];
    NSArray* humansAndAnimals=@[runner1,cyclist1,swimmer1,student1,cat1,dog1];
    for (id obj in humansAndAnimals) {
        NSLog(@"Type:%@",[obj superclass]);
        if ([[obj class] isSubclassOfClass:[Human class]]) {
            Human* human=obj;
            NSLog(@"name: %@, height: %.2f m, weight: %.2f kg, sex: %@",human.name,human.height,human.weight,[self sexDefine:human.sex] );
            if ([human isKindOfClass:[Student class]]) {
                Student* goodStudent=(Student*)human;
                NSLog(@"city: %@, university: %@",goodStudent.city,goodStudent.university);
            }
        } else if ([[obj class] isSubclassOfClass:[Animal class]]){
            Animal* animal=obj;
            NSLog(@"name: %@, weight: %.2f kg",animal.nickname,animal.weight);
        }
        [obj move];
    }
    //--------------
    //end of Master
    
    //Zvezda
    //NSArray* arrayAnimals=@[@"st1",@"st2",@"st3",@"st4",@"st5",@"st6"];
    //NSArray* arrayPeople=@[@"st7",@"st8",@"st9",@"st10"];

    NSArray* arrayAnimals=@[cat1,dog1];
    NSArray* arrayPeople=[NSArray arrayWithArray:humans2];
    
    NSInteger peopleCount=[arrayPeople count];
    NSInteger animalCount=[arrayAnimals count];
    /* measuring time snippet
    NSDate *methodStart = [NSDate date];
     //do something here
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    */
    NSDate *methodStart2 = [NSDate date];
    for (NSInteger i=0; i<MAX(peopleCount, animalCount); i++) {
        if (i<peopleCount) {
            NSLog(@"man: %@",[arrayPeople objectAtIndex:i]);
        }
        if (i<animalCount) {
            NSLog(@"animal: %@",[arrayAnimals objectAtIndex:i]);
        }
    }
    NSDate *methodFinish2 = [NSDate date];
    NSTimeInterval executionTime2= [methodFinish2 timeIntervalSinceDate:methodStart2];
  
    NSLog(@"executionTime with if = %f", executionTime2);
    //--------------
    //end of Zvezda
    
    
    
    return YES;
}

-(NSString*) sexDefine:(Sex) sex{
    if (sex==SexMan){
        return @"man";
    } else {
        return @"woman";
    }
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
