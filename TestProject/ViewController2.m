//
//  ViewController2.m
//  TestProject
//
//  Created by varicom on 16/2/16.
//  Copyright © 2016年 Mouwenbin. All rights reserved.
//

#import "ViewController2.h"
#import "WGradientView.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WGradientView *wgradient = [[WGradientView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:wgradient];
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

@end