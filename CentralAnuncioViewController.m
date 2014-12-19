//
//  CentralAnuncioViewController.m
//  AppRural
//
//  Created by Adalto William dos Reis on 15/12/14.
//  Copyright (c) 2014 Adalto William dos Reis. All rights reserved.
//

#import "CentralAnuncioViewController.h"

@interface CentralAnuncioViewController ()

@end

@implementation CentralAnuncioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    self.title = @"Perfil";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        UITabBarItem *tBarItem = self.tabBarItem;
        tBarItem.title = @"view";
        UIImage *imagem  = [UIImage imageNamed:@"user.png"];
        tBarItem.image = imagem;
        
        //        [[UITabBar tab] setTintColor:[UIColor yellowColor]];
        [self.tabBarController.tabBar setTintColor:[UIColor yellowColor]];
        
    }
    return self;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
