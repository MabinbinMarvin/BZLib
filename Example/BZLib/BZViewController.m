//
//  BZViewController.m
//  BZLib
//
//  Created by binbinma on 11/29/2015.
//  Copyright (c) 2015 binbinma. All rights reserved.
//

#import "BZViewController.h"
#import <BZLib/BZHttphelper.h>

@interface BZViewController ()
{
    BZHttphelper *_httpHelper;
}
@end

@implementation BZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _httpHelper = [BZHttphelper new];
    [_httpHelper getWithUrl:@"http://wcf.open.cnblogs.com/blog/u/brycezhang/posts/1/5" withCompletion:^(id responseObject) {
        NSLog(@"[Completion]:%@", responseObject);
    } failed:^(NSError *error) {
        NSLog(@"[Failed]:%@", error);
    }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
