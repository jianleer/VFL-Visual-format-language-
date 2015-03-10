//
//  ViewController.m
//  VFL(Visual format language)
//
//  Created by admin on 14/12/15.
//  Copyright (c) 2014年 jianleer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    UIButton *button=[UIButton buttonWithType:normal];
    [button setTitle:@"点击一下" forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints=NO;
    [button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button];
    
    NSArray *constraints1=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button]-|"options:0
                   metrics:nil
                     views:NSDictionaryOfVariableBindings(button)];

    NSArray *constraints2=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[button(==30)]"options:0
                       metrics:nil
                         views:NSDictionaryOfVariableBindings(button)];


    [self.view addConstraints:constraints1];
    [self.view addConstraints:constraints2];


    UIButton *button1=[[UIButton alloc]init];
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    [button1 setTitle:@"请不要点击我" forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button1];

    NSArray *constraints3=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button1(button)]" options:0
                     metrics:nil
                       views:NSDictionaryOfVariableBindings(button1,button)];

    NSArray *constraints4=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-[button1(button)]"  options:0
                                     metrics:nil
                                       views:NSDictionaryOfVariableBindings(button1,button)];

    [self.view addConstraints:constraints3];
    [self.view addConstraints:constraints4];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
