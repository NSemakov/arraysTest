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
