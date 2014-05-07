//
//  RVMDetailMinuteVM.m
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import "RVMDetailMinuteVM.h"

@implementation RVMDetailMinuteVM

- (RACSignal *)time
{
    return [[self forwardSignalWhileActive:[[RACSignal interval:1.0 onScheduler:RACScheduler.mainThreadScheduler]
    map:^id(id date)
    {
        NSDateFormatter *timeFormatter = NSDateFormatter.new;
        timeFormatter.dateFormat = @"mm:ss";
        return [timeFormatter stringFromDate:date];
    }]]
    logNext];
}

@end
