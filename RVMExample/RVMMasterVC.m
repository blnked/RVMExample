//
//  RVMMasterVC.m
//  RVMExample
//
//  Created by Eduard Beleninik on 5/7/14.
//  Copyright (c) 2014 Eduard Beleninik. All rights reserved.
//

#import "RVMMasterVC.h"
#import "RVMMasterVM.h"

#import "RVMDetailVC.h"

@interface RVMMasterVC () <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, weak) IBOutlet RVMMasterVM *viewModel;

@end

@implementation RVMMasterVC

static NSString * const kBasicCellIdentifier = @"BasicCellIdentifier"; // from Storyboard

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.numberOfItems;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kBasicCellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [self.viewModel nameOfItemAtIndexPath:indexPath];
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    RVMDetailVC *detailVC = segue.destinationViewController;
    detailVC.viewModel = [self.viewModel viewModelAtIndexPath:self.tableView.indexPathForSelectedRow];
}

@end
