//
//  RVMDetailVM.h
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RVMViewModelReacting.h"

@protocol RVMDetailVM <NSObject, RVMViewModelReacting>

- (RACSignal *)time;

@end
