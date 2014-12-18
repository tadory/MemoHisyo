//
//  TimeViewController.m
//  MemoHisyo
//
//  Created by 田所　龍 on 2014/12/18.
//  Copyright (c) 2014年 田所　龍. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController
-(void)viewDidLoad
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
    
    UIImage *img2 = [UIImage imageNamed:@"settei.png"];  // ボタンにする画像を生成する
    UIButton *btn2 = [[UIButton alloc]
                      initWithFrame:CGRectMake(160, 443, 140, 80)];  // ボタンのサイズを指定する
    [btn2 setBackgroundImage:img2 forState:UIControlStateNormal];  // 画像をセットする
    // ボタンが押された時にhogeメソッドを呼び出す
    [btn2 addTarget:self
             action:@selector(done) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn3.frame=CGRectMake(90, 375, 141, 42);
    [btn3 setTitle:@"決定"forState:UIControlStateNormal];
    btn3.titleLabel.font = [UIFont systemFontOfSize:30.0];
    [btn3 addTarget:self action:@selector(will)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    settingPicker.delegate = self;
    settingPicker.dataSource = self;
    
    array = @[@"0時", @"1時", @"2時", @"3時", @"4時", @"5時", @"6時", @"7時", @"8時", @"9時", @"10時", @"11時", @"12時", @"13時", @"14時", @"15時", @"16時", @"17時", @"18時", @"19時", @"20時", @"21時", @"22時", @"23時"];
    
}



// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    /*
     if (component == 0) {
     return array.count;
     }else if(component == 1) {
     return 10;
     }else{
     return 15;
     }
     */
    return array.count;
}

//各構成要素のタイトル
- (NSString*)pickerView: (UIPickerView*)pView titleForRow:(NSInteger) row forComponent:(NSInteger)componet
{
    return [array objectAtIndex:row];
}

//どの仰臥選ばれたか
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"row == %d", (int)row);
    
    if (row == 2) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"3番目" message:@"ccc" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        
    }
}





@end
