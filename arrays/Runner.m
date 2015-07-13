//
//  Runner.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Runner.h"

@implementation Runner
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name=@"Ivan Runner";
        self.height=1.85f;
        self.weight=90.f;
        self.sex=SexMan;
    }
    return self;
}
-(void) move{
    NSLog(@"Class:%@. %@ is running",self.class, self.class);
}
@end
