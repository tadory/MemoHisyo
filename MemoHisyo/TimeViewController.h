//
//  TimeViewController.h
//  MemoHisyo
//
//  Created by 田所　龍 on 2014/12/18.
//  Copyright (c) 2014年 田所　龍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    IBOutlet UIPickerView *settingPicker;
    NSArray *array;
    IBOutlet UILabel *label1;
}

@end
