//
//  AppDelegate.m
//  Aula2Desafio2
//
//  Created by Adalto William dos Reis on 19/05/14.
//  Copyright (c) 2014 Adalto William dos Reis. All rights reserved.
//

#import "AppDelegate.h"
#import "CentralUserController.h"
#import "CentralAnuncioViewController.h"
#import "GaleriaController.h"
#import "ConfigController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    //aqui criamos as views
    CentralUserController *viewUser = [[CentralUserController alloc]init];
    CentralAnuncioViewController *viewAnuncio = [[CentralAnuncioViewController alloc]init];
    GaleriaController *viewGaleria = [[GaleriaController alloc]init];
    ConfigController *viewConfig = [[ConfigController alloc]init];

    
    
    NSMutableArray *tabs = [[NSMutableArray alloc]init];
    
    
    //cria a tabbar, que vai ser a rootViewController
    UITabBarController *tab = [[UITabBarController alloc]init];
    
    //seta a cor da tabbar background
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:142/255 green:142/255 blue:147/255 alpha:5]];
    
    //seta a cor dos tabbar icon quando selecionado
    tab.view.tintColor = [UIColor grayColor];
    
    //cria a navigationController e inicia ela com uma view Controller
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewUser];
    UINavigationController *nav2 =[[UINavigationController alloc]initWithRootViewController:viewAnuncio];
    UINavigationController *nav3 =[[UINavigationController alloc]initWithRootViewController:viewGaleria];
    UINavigationController *nav4 =[[UINavigationController alloc]initWithRootViewController:viewConfig];
    
    
    
    [tabs addObject:nav2];
    [tabs addObject:nav];
    [tabs addObject:nav3];
    [tabs addObject:nav4];
    tab.viewControllers = tabs;
    
    self.window.rootViewController = tab;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
