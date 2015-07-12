//
//  Human.h
//  arrays
//
//  Created by Admin on 13.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
// using of NS_ENUM instead of enum allows to adapt app either to 32/64 bit systems
typedef NS_ENUM(NSInteger, Sex) {
    SexMan,
    SexWoman
};
@interface Human : NSObject
@property (strong,nonatomic) NSString* name;
@property (assign,nonatomic, getter=isMan) Sex sex;
@property (assign, nonatomic) CGFloat weight;
@property (assign,nonatomic) CGFloat height;


-(void) move;
@end
