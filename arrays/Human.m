//
//  Human.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Human.h"

@implementation Human
-(void) move {
    NSLog(@"I'm just human being");
}
-(NSString*) description {
NSString* formatString=[NSString stringWithFormat:@"Name:%@, height: %.2f, weight: %.2f",self.name,self.height,self.weight];
    return formatString;
}
@end
