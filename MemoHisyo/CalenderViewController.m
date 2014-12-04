//
//  CalenderViewController.m
//  MemoHisyo
//
//  Created by 田所　龍 on 2014/11/27.
//  Copyright (c) 2014年 田所　龍. All rights reserved.
//

#import "CalenderViewController.h"

@interface CalenderViewController ()

@end

@implementation CalenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    

    // Do any additional setup after loading the view.
    
    //カレンダーを表示
    [self.view setBackgroundColor:[UIColor brownColor]];
    _sampleView= [[CalendarView alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, self.view.bounds.size.height-80)];
    _sampleView.delegate = self;
    [_sampleView setBackgroundColor:[UIColor whiteColor]];
    _sampleView.calendarDate = [NSDate date];
    [self.view addSubview:_sampleView];
    // Do any additional setup after loading the view.
    
    
    
    
    UIImage *img = [UIImage imageNamed:@"MEMO.png"];  // ボタンにする画像を生成する
    UIButton *btn = [[UIButton alloc]
                     initWithFrame:CGRectMake(20, 443, 140, 80)];  // ボタンのサイズを指定する
    [btn setBackgroundImage:img forState:UIControlStateNormal];  // 画像をセットする
    // ボタンが押された時にhogeメソッドを呼び出す
    [btn addTarget:self
            action:@selector(memo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
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

-(void)tappedOnDate:(NSDate *)selectedDate
{
    NSLog(@"tappedOnDate %@(GMT)",selectedDate);
}

- (void)memo
{
    NSLog(@"tapped");
}


@end
