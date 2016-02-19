//
//  ViewController1.m
//  TestProject
//
//  Created by varicom on 16/2/16.
//  Copyright © 2016年 Mouwenbin. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property (nonatomic, strong) CALayer *myLayer;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.    
    
    //创建layer
    CALayer *myLayer=[CALayer layer];
    //设置layer的属性
    myLayer.bounds=CGRectMake(0, 0, 150, 60);
    myLayer.backgroundColor=[UIColor yellowColor].CGColor;
    myLayer.position=CGPointMake(100, 100);
    myLayer.anchorPoint=CGPointMake(0, 0);
    myLayer.cornerRadius=40;
    //添加layer
    [self.view.layer addSublayer:myLayer];
    self.myLayer=myLayer;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //1.创建动画
    CABasicAnimation *anima=[CABasicAnimation animation];
    anima.keyPath=@"transform";
    //1.1设置动画执行时间
    anima.duration=2.0;
    //1.2修改属性，执行动画
    anima.toValue=[NSValue valueWithCATransform3D:CATransform3DMakeTranslation(100, 100, 100)];
    //1.3设置动画执行完毕后不删除动画
    anima.removedOnCompletion=NO;
    //1.4设置保存动画的最新状态
    anima.fillMode=kCAFillModeForwards;
    //2.添加动画到layer
    [self.myLayer addAnimation:anima forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end