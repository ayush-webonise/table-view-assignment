//
//  Products.m
//  TableViewApplication
//
//  Created by webonise on 23/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import "Products.h"

@implementation Products
@synthesize productName, productPrice, productCategory;

- (id)init
{
    self = [super init];
    productName = @"";
    productPrice = @"";
    productCategory = @"";
    return self;
}

@end
