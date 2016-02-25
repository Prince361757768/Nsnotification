//
//  FirstViewController.m
//  Nsnotification
//
//  Created by 大麦 on 16/2/25.
//  Copyright (c) 2016年 lsp. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self interface];
}

-(void)interface
{
    //
    [[NSNotificationCenter defaultCenter] postNotificationName:@"printA" object:nil];
    //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printA) name:@"printA" object:nil];
}

-(void)printA
{
    NSLog(@"printA");
}


@end
