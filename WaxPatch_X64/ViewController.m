//
//  ViewController.m
//  WaxPatch_X64
//
//  Created by maxfong on 15/2/5.
//  Copyright (c) 2015年 maxfong. All rights reserved.
//

#import "ViewController.h"
#import "wax.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    NSString *directory = [doc stringByAppendingPathComponent:@"lua"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager removeItemAtPath:directory error:NULL];
    NSError *error = nil;
    if (![fileManager createDirectoryAtPath:directory withIntermediateDirectories:YES attributes:nil error:&error]) {
        NSLog(@"Error, s is %@, %s, %s, %d",error.description, __FILE__ ,__FUNCTION__, __LINE__);
    }
    
    //模拟-移动文件到下载目录
    [@[@"load", @"ViewController"] enumerateObjectsUsingBlock:^(NSString *name, NSUInteger idx, BOOL *stop) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:name ofType:@"lua"];
        NSString *docPath = [directory stringByAppendingString:[NSString stringWithFormat:@"/%@.lua", name]];
        if ([fileManager fileExistsAtPath:bundlePath] && ![fileManager fileExistsAtPath:docPath]) {
            NSError *error = nil;
            if ([fileManager moveItemAtPath:bundlePath toPath:docPath error:&error] != YES)
                NSLog(@"Unable to move file: %@", [error localizedDescription]);
        }
    }];
    
    NSString *pp = [[NSString alloc ] initWithFormat:@"%@/?.lua;%@/?/init.lua;", directory, directory];
    setenv(LUA_PATH, [pp UTF8String], 1);
    NSLog(@"%@", directory);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    self.lblMessage.text = @"OC点击赋值";
}

- (IBAction)loadLua:(id)sender {
    wax_start("load", nil);
    self.lblMessage.text = @"lua加载完成";
}

@end
