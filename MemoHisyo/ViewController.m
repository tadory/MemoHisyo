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
    UIButton *btn = [[UIButton alloc]
                      initWithFrame:CGRectMake(20, 443, 140, 80)];  // ボタンのサイズを指定する
    [btn setBackgroundImage:img forState:UIControlStateNormal];  // 画像をセットする
    // ボタンが押された時にhogeメソッドを呼び出す
    [btn addTarget:self
            action:@selector(memo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [textView becomeFirstResponder];
   
    
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"3");
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];

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

@end
