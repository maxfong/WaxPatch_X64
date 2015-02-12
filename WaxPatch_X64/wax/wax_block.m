//
//  wax_block.m
//  WaxPatch_X64
//
//  Created by maxfong on 15/2/11.
//  Copyright (c) 2015年 maxfong. All rights reserved.
//

#import "wax_block.h"
#import "wax.h"
#import "wax_instance.h"
#import "wax_helpers.h"

@interface wax_block ()

@end

NSString * const WAXBlockNotification = @"WAXBlockNotification";

@implementation wax_block

static NSMutableDictionary *waxBlocks() {
    static NSMutableDictionary *_waxBlocks = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ _waxBlocks = [@{} mutableCopy]; });
    return _waxBlocks;
}

+ (instancetype)sharedManager {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = self.new;
    });
    return instance;
}

- (void)start {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleBlock:) name:WAXBlockNotification object:nil];
}

- (void)stop {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSString *)handleBlock:(NSNotification *)note {
    id obj = [note object];
    wax_fromInstance(wax_currentLuaState(), obj);
    
    return nil;
}

@end
