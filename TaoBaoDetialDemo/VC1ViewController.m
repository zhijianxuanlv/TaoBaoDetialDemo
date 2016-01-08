//
//  VC1ViewController.m
//  TaoBaoDetialDemo
//
//  Created by 罗成 on 16/1/8.
//  Copyright © 2016年 罗成. All rights reserved.
//

#import "VC1ViewController.h"
#import "Common.h"
#import "YXLDisplayListView.h"
#import "TestViewController.h"
@interface VC1ViewController ()

//@property (weak, nonatomic) IBOutlet YXLDisplayListView *displayView;

@property (strong, nonatomic) YXLDisplayListView *displayView;
@end

@implementation VC1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height);
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.contentSize = CGSizeMake(0,self.view.frame.size.height);
    self.scrollView = scrollView;
    [self.view addSubview:scrollView];
    
    YXLDisplayListView *displayView = [[YXLDisplayListView alloc]init];
    
    displayView.frame = CGRectMake(0, 0,self.view.frame.size.width,self.view.frame.size.height );
    
    self.displayView = displayView;
    [scrollView addSubview:displayView];
    

    [self getdisplayListView];
    
    // Do any additional setup after loading the view.
}

- (void)getdisplayListView {




    TestViewController *v1 = [[TestViewController alloc] init];
    v1.view.backgroundColor = [UIColor redColor];
    v1.title = @"v1";
    
    TestViewController *v2 = [[TestViewController alloc] init];
    v2.view.backgroundColor = [UIColor colorWithRed:1.0 green:0.7233 blue:0.6005 alpha:1.0];
    v2.title = @"v2";
    
    TestViewController *v3 = [[TestViewController alloc] init];
    v3.view.backgroundColor = [UIColor redColor];
    v3.title = @"v3";
    
    TestViewController *v4 = [[TestViewController alloc] init];
    v4.view.backgroundColor = [UIColor redColor];
    v4.title = @"v4";
    
    self.displayView.kBtnWInt = 4;
    NSArray * controllers = @[v1,v2,v3,v4];
    
    self.displayView.isNeedTopUnderline = YES;
    self.displayView.tabItemNormalColor = UIColorFromRGB_HEX(0x3e3e3e);
    self.displayView.tabItemSelectedColor = UIColorFromRGB_HEX(0xff7cc5);
    self.displayView.topUnderlineBackgroundColor = HEX_COLOR_THEME;
    self.displayView.topBackgroundColor = [UIColor whiteColor];
    self.displayView.viewControllers = controllers;


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
