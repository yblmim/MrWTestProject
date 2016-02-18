//
//  ViewController.m
//  TestProject
//
//  Created by varicom on 16/2/16.
//  Copyright © 2016年 Mouwenbin. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
#import "ViewController6.h"
#import "ViewController7.h"
#import "ViewController8.h"
#import "ViewController9.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.dataArray = [[NSArray alloc]initWithObjects:@"ViewController1",@"ViewController2",@"ViewController3",@"ViewController4",@"ViewController5",@"ViewController6",@"ViewController7",@"ViewController8",@"ViewController9", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *selectedCtl = nil;
    switch (indexPath.row) {
        case 0:
            selectedCtl = [[ViewController1 alloc]init];
            break;
        case 1:
            selectedCtl = [[ViewController2 alloc]init];
            break;
        case 2:
            selectedCtl = [[ViewController3 alloc]init];
            break;
        case 3:
            selectedCtl = [[ViewController4 alloc]init];
            break;
        case 4:
            selectedCtl = [[ViewController5 alloc]init];
            break;
        case 5:
            selectedCtl = [[ViewController6 alloc]init];
            break;
        case 6:
            selectedCtl = [[ViewController7 alloc]init];
            break;
        case 7:
            selectedCtl = [[ViewController8 alloc]init];
            break;
        case 8:
            selectedCtl = [[ViewController9 alloc]init];
            break;
        default:
            break;
    }
    selectedCtl.view.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
    [self.navigationController pushViewController:selectedCtl animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
