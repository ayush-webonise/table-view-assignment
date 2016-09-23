//
//  AppDelegate.h
//  TableViewApplication
//
//  Created by webonise on 20/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) UIViewController *viewController;
@property (readwrite) NSMutableArray *arrayProducts;
@end

