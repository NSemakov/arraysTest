//
//  Student.m
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Student.h"

@implementation Student
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name=@"Nikolay Student";
        self.height=1.91f;
        self.weight=80.9f;
        self.sex=SexMan;
        self.city=@"Saint-Petersburg";
        self.university=@"SPbSTU";
    }
    return self;
}
-(void) move{
    [super move];
    NSLog(@"Class:%@. %@ is studying",self.class, self.class);
}
@end
