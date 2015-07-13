//
//  Cat.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Cat.h"

@implementation Cat
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nickname=@"Ba-a-a-a-rsik Cat";
        self.weight=3.2f;
    }
    return self;
}
-(void) move{
    NSLog(@"Class:%@. %@ is myauing",self.class, self.class);
}
@end
