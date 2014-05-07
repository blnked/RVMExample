//
//  RVMMasterVM.m
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import "RVMMasterVM.h"

#import "RVMDetailMinuteVM.h"
#import "RVMDetailSecondVM.h"

@interface RVMMasterVM ()
@property (nonatomic, strong) NSArray *items;
@end

@implementation RVMMasterVM

- (instancetype)init {
    self = [super init];
    if (self) {
        self.items = @[ RVMDetailMinuteVM.class, RVMDetailSecondVM.class ];
    }
    return self;
}

- (NSInteger)numberOfItems
{
    return self.items.count;
}

- (NSString *)nameOfItemAtIndexPath:(NSIndexPath *)indexPath
{
    return NSStringFromClass(self.items[indexPath.row]);
}

- (id<RVMDetailVM>)viewModelAtIndexPath:(NSIndexPath *)indexPath
{
    return [[self.items[indexPath.row] alloc] init];
}

@end
