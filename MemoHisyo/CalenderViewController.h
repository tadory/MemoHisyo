//
//  CalenderViewController.h
//  MemoHisyo
//
//  Created by 田所　龍 on 2014/11/27.
//  Copyright (c) 2014年 田所　龍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarView.h"

@interface CalenderViewController : UIViewController<CalendarDelegate>
{
    CalendarView *_sampleView;
}

@end
