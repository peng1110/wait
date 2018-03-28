//
//  one1Controller.m
//  MMRuntime
//
//  Created by mengxuanlong on 17/5/10.
//  Copyright © 2017年 mengxuanlong. All rights reserved.
//

#import "one1Controller.h"
#import "UIGestureRecognizer+Block.h"
#import "UIView+Extension.h"


@interface one1Controller ()

@end

@implementation one1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self leftBackButton];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"block直接调用手势的action";
    UIView *viewM = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    viewM.backgroundColor = [UIColor grayColor];
    [self.view addSubview:viewM];
    [viewM addGestureRecognizer:[UITapGestureRecognizer mm_gestureRecognizerWithActionBlock:^(id gestureRecognizer) {
        NSLog(@"viewM点击事件-------");

    }]];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    [view1 setTapActionWithBlock:^{
        NSLog(@"view1点击事件-------");
    }];
    
    [self.view addSubview:view1];
                    
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
