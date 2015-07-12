//
//  Swimmer.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name=@"Swimmer Maria";
        self.height=1.65f;
        self.weight=60.f;
        self.sex=SexWoman;
    }
    return self;
}
-(void) move{
    NSLog(@"Class:%@. %@ is swimming",self.class, self.class);
}
@end
