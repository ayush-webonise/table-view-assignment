//
//  AddProductsVC.m
//  TableViewApplication
//
//  Created by webonise on 23/09/16.
//  Copyright © 2016 webonise. All rights reserved.
//

#import "AddProductsVC.h"

@interface AddProductsVC(){
    
    IBOutlet UITableView *tableViewListProducts;
}

@end

@implementation AddProductsVC
AppDelegate *appDelegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(navigateToAddProducts)];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem = item;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self->tableViewListProducts reloadData];
}

-(void)navigateToAddProducts {
    NSLog(@"added");
    ProductsList *productsList = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductsList"];
    [self.navigationController pushViewController:productsList animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    return [appDelegate.arrayProducts count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//     AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    static NSString *cellIdentifier = @"DisplayProductsTableViewCell";
    DisplayProductsTableViewCell *listProductsTableViewCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(listProductsTableViewCell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
        listProductsTableViewCell = [nib objectAtIndex:0] ;
    }
     
    listProductsTableViewCell.imageViewProductImage.image = [UIImage imageNamed:IMAGE_NAME];
    listProductsTableViewCell.labelProductName.text = [appDelegate.arrayProducts[indexPath.row] productName] ;
    listProductsTableViewCell.labelProductPrice.text = [appDelegate.arrayProducts[indexPath.row] productPrice];
    return listProductsTableViewCell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
