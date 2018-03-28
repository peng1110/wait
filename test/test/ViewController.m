//
//  ViewController.m
//  test
//
//  Created by  Peng on 2018/3/27.
//  Copyright © 2018年  Peng. All rights reserved.
//

#import "ViewController.h"
#import "one1Controller.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.navigationItem.title = @"测试";
    
    self.view.backgroundColor = [UIColor grayColor];
}

- (IBAction)action:(UIButton *)sender{
    one1Controller *VC = [[one1Controller alloc] init];
    
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
