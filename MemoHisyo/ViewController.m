//
//  ViewController.m
//  MemoHisyo
//
//  Created by 田所　龍 on 2014/11/20.
//  Copyright (c) 2014年 田所　龍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"MEMO.png"];  // ボタンにする画像を生成する
    buttonA = [[UIButton alloc]
                      initWithFrame:CGRectMake(20, 443, 140, 80)];  // ボタンのサイズを指定する
    [buttonA setBackgroundImage:img forState:UIControlStateNormal];  // 画像をセットする
    // ボタンが押された時にhogeメソッドを呼び出す
    [buttonA addTarget:self
            action:@selector(memo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonA];
    
    
    
    UIImage *imga = [UIImage imageNamed:@"settei.png"];  // ボタンにする画像を生成する
    buttonB = [[UIButton alloc]
                     initWithFrame:CGRectMake(160, 443, 140, 80)];  // ボタンのサイズを指定する
    [buttonB setBackgroundImage:imga forState:UIControlStateNormal];  // 画像をセットする
    // ボタンが押された時にhogeメソッドを呼び出す
    [buttonB addTarget:self
            action:@selector(done) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonB];
}



- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"3");
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];

    [textView becomeFirstResponder];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"4");
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //[self.navigationController setNavigationBarHidden:NO animated:YES];
}




-(IBAction) kanryou{
    [textView resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)memo
{
     NSLog(@"tapped");
}

- (void)done
{
    [self performSegueWithIdentifier:@"Detail" sender:nil];
}
@end
