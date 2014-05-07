//
//  RVMDetailVC.h
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RVMDetailVM.h"
#import "RVMViewModel.h"

@interface RVMDetailVC : UIViewController

@property (nonatomic, strong)  RVMViewModel<RVMDetailVM> *viewModel; // without use Protocol

@end
