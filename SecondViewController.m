//
//  SecondViewController.m
//  1.simpleUINavigationController
//
//  Created by Gechanghang on 14-7-29.
//  Copyright (c) 2014年 Ge Chang Hang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loadView{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor redColor];
    self.view = baseView ;
    
    
    UIButton *isHidden = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [isHidden setTitle:@"isHidden" forState:UIControlStateNormal];
    [isHidden setFrame:CGRectMake(90, 150, 140, 40)];
    [isHidden addTarget:self action:@selector(isHidden) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:isHidden];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back setFrame:CGRectMake(90, 200, 140, 40)];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backRootVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
                        
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
-(void)isHidden{
    if(self.navigationController.navigationBarHidden){
        [self.navigationController setNavigationBarHidden:NO];
        NSLog(@"Hello");
    }else{
        [self.navigationController setNavigationBarHidden:YES];
        
    }
}
-(void)backRootVC{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
