//
//  Dog.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nickname=@"Sharik Dog";
        self.weight=7.8f;
    }
    return self;
}
-(void) move{
    NSLog(@"Class:%@. %@ is gav-gav'ing",self.class, self.class);
}
@end
