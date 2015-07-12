//
//  Cyclist.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Cyclist.h"

@implementation Cyclist
@synthesize sex=_sex;
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name=@"Cyclist Vasili";
        self.height=2.f;
        self.weight=65.4f;
        self.sex=SexMan;
    }
    return self;
}
-(void) move{
    NSLog(@"Class:%@. %@ is cycling",self.class, self.class);
}
/*
-(Sex) isMan{
    if (_sex==SexMan){
        NSLog(@"man");
    } else {
        NSLog(@"woman");
    }
    return _sex;
}*/
@end
