//
//  RVMDetailVC.m
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import "RVMDetailVC.h"

@interface RVMDetailVC ()

@property (nonatomic, weak) IBOutlet UILabel *lblTime;

@end

@implementation RVMDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    RAC(self.lblTime, text) = [self.viewModel time];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*
 The view controller dictates the "active" state of the view model.
 */

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.viewModel.active = YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.viewModel.active = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.viewModel.active = NO;
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    self.viewModel.active = NO;
}


@end
