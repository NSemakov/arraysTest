//
//  Animal.h
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animal : NSObject
@property (strong,nonatomic) NSString* nickname;
@property (assign, nonatomic) CGFloat weight;



-(void) move;
@end
