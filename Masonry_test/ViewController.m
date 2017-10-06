//
//  ViewController.m
//  Masonry_test
//
//  Created by Derek on 2017/10/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import <MMPlaceHolder/MMPlaceHolder.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
#pragma 1.第一种
    //[self first_test];
#pragma 2.第二种
    //[self sec_test];
#pragma 3.第三种
    //[self third_test];
#pragma 4.第三种
    [self fourth_test];
    
}
-(void)first_test{
    
    UIView *v1=[UIView new];
    v1.backgroundColor=[UIColor redColor];
    [v1 showPlaceHolder];
    [self.view addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(400, 400));
    }];
}

-(void)sec_test{
    
    UIView *v1=[UIView new];
    v1.backgroundColor=[UIColor redColor];
    [v1 showPlaceHolder];
    [self.view addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    UIView * v2=[UIView new];
    v2.backgroundColor=[UIColor blueColor];
    [v2 showPlaceHolder];
    [v1 addSubview:v2];
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(v1).with.offset(10);
        make.right.equalTo(v1).with.offset(-10);
        make.bottom.equalTo(v1).with.offset(-10);
        make.top.equalTo(v1).with.offset(10);
    }];
    
    
}
-(void)third_test{
    
    UIView *v1=[UIView new];
    v1.backgroundColor=[UIColor blackColor];
    [v1 showPlaceHolder];
    [self.view addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    UIView * v2=[UIView new];
    v2.backgroundColor=[UIColor blueColor];
    v2.alpha=0.9;
    [v2 showPlaceHolder];
    [v1 addSubview:v2];
    
    UIView * v3=[UIView new];
    v3.backgroundColor=[UIColor orangeColor];
    v3.alpha=0.9;
    [v3 showPlaceHolder];
    [v1 addSubview:v3];
    
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.width.equalTo(@135);
        make.height.equalTo(@150);
        make.centerY.equalTo(v1.mas_centerY);
        make.left.equalTo(v1).with.offset(10);
        make.width.equalTo(v3);
    }];
    
    
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(v1.mas_centerY);
        make.left.equalTo(v2.mas_right).with.offset(10);
        make.height.equalTo(@150);
        make.width.equalTo(v2);
        make.right.equalTo(v1).with.offset(-10);
        
    }];
}
-(void)fourth_test{
    
    UIView *v1=[UIView new];
    v1.backgroundColor=[UIColor blackColor];
    //[v1 showPlaceHolder];
    [self.view addSubview:v1];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    UIView * v2=[UIView new];
    v2.backgroundColor=[UIColor blueColor];
    v2.alpha=0.9;
    [v2 showPlaceHolder];
    [v1 addSubview:v2];
    
    UIView * v3=[UIView new];
    v3.backgroundColor=[UIColor orangeColor];
    v3.alpha=0.9;
    [v3 showPlaceHolder];
    [v1 addSubview:v3];
    
    UIView * v4=[UIView new];
    v4.backgroundColor=[UIColor greenColor];
    
    [v4 showPlaceHolder];
    [v1 addSubview:v4];
    
    UIView * v5=[UIView new];
    v5.backgroundColor=[UIColor purpleColor];
    v5.alpha=0.9;
    [v5 showPlaceHolder];
    [v1 addSubview:v5];
    
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.width.equalTo(@135);
        make.height.equalTo(@90);
        make.top.equalTo(v1).with.offset(20);
        make.left.equalTo(v1).with.offset(10);
        make.width.equalTo(v3);
    }];
    
    
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(v2.mas_centerY);
        make.left.equalTo(v2.mas_right).with.offset(10);
        make.height.equalTo(@50);
        make.width.equalTo(v2);
        make.right.equalTo(v1).with.offset(-10);
        
    }];
    
    [v4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@70);
        make.height.equalTo(@80);
        make.centerX.equalTo(v2.mas_centerX);
        make.top.equalTo(v2.mas_bottom).with.offset(10);
        
    }];
    
    
    [v5 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(v4.mas_centerX);
        make.height.equalTo(@80);
        make.width.equalTo(@50);
        make.top.equalTo(v4.mas_bottom).with.offset(10);
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
