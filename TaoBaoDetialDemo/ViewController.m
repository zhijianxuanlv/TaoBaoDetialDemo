//
//  ViewController.m
//  TaoBaoDetialDemo
//
//  Created by 罗成 on 16/1/8.
//  Copyright © 2016年 罗成. All rights reserved.
//

#import "ViewController.h"
#import "VC1ViewController.h"
#import "UIScrollView+JYPaging.h"
#define kscreenWidth [UIScreen mainScreen].bounds.size.width
#define kscreenHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    scrollView.backgroundColor = [UIColor greenColor];

    
    scrollView.contentSize = CGSizeMake(0,self.view.frame.size.height);
    [self.view addSubview:scrollView];
    self.edgesForExtendedLayout = UIRectEdgeNone;

    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VC1ViewController *vc1 = [storyboard instantiateViewControllerWithIdentifier:@"vc1"];
    if (vc1.view != nil) {
        scrollView.secondScrollView = vc1.scrollView;
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
