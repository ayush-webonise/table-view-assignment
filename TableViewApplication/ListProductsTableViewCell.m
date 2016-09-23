//
//  ListProductsTableViewCell.m
//  TableViewApplication
//
//  Created by webonise on 21/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import "ListProductsTableViewCell.h"

@implementation ListProductsTableViewCell
@synthesize imageViewProductImage, labelProductName, labelProductPrice;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
