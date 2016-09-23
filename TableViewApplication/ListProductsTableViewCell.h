//
//  ListProductsTableViewCell.h
//  TableViewApplication
//
//  Created by webonise on 21/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListProductsTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageViewProductImage;
@property (strong, nonatomic) IBOutlet UILabel *labelProductName;
@property (strong, nonatomic) IBOutlet UILabel *labelProductPrice;

@end
