//
//  ProductsList.h
//  TableViewApplication
//
//  Created by webonise on 23/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Products.h"

@interface ProductsList : UIViewController{
    IBOutlet UITextField *textFieldProductName;
    IBOutlet UITextField *textFieldProductCategory;
    IBOutlet UITextField *textFieldProductPrice;
}

@end
