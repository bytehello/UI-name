//
//  RootViewController.m
//  1.simpleUINavigationController
//
//  Created by Gechanghang on 14-7-29.
//  Copyright (c) 2014年 Ge Chang Hang. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)loadView{
    UIView *baseview = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame]];
    baseview.backgroundColor = [UIColor purpleColor];//给view设置一个背景颜色
    self.view = baseview ;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Push" forState:UIControlStateNormal];//给button设置标题
    [button setFrame:CGRectMake(90, 100, 140, 40)];//给button设置位置
    [button addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //默认是隐藏的
    [self.navigationController setToolbarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)pushVC{
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
    
}
@end
