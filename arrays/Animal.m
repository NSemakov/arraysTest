//
//  Animal.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Animal.h"

@implementation Animal
-(void) move {
    NSLog(@"I'm just animal");
}
-(NSString*) description {
    NSString* formatString=[NSString stringWithFormat:@"nickname:%@, weight: %.2f",self.nickname,self.weight];
    return formatString;
}
@end
