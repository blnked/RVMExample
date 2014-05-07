//
//  RVMMasterVM.h
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import "RVMViewModel.h"
#import "RVMDetailVM.h"

@interface RVMMasterVM : RVMViewModel

- (NSInteger)numberOfItems;

- (NSString *)nameOfItemAtIndexPath:(NSIndexPath *)indexPath;

- (id<RVMDetailVM>)viewModelAtIndexPath:(NSIndexPath *)indexPath;

@end
