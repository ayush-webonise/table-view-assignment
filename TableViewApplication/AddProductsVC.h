//
//  AddProductsVC.h
//  TableViewApplication
//
//  Created by webonise on 23/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Products.h"
#import "ProductsList.h"
#import "ListProductsTableViewCell.h"

@interface AddProductsVC : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
