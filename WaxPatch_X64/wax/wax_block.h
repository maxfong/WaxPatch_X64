//
//  wax_block.h
//  WaxPatch_X64
//
//  Created by maxfong on 15/2/11.
//  Copyright (c) 2015年 maxfong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSDictionary * (^waxBlock)(NSDictionary * options);

extern NSString * const WAXBlockNotification;

@interface wax_block : NSObject

+ (instancetype)sharedManager;

- (void)start;

@end
