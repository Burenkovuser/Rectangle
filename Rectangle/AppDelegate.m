//
//  AppDelegate.m
//  Rectangle
//
//  Created by Vasilii on 29.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Rectangle *myRect = [[Rectangle alloc] init];
    XYPoint *myPoint = [[XYPoint alloc] init];
    
    [myPoint setX:100 setY:200];
    
    [myRect setWidht:5 andHight:8];
    myRect.origin = myPoint;
    
    
    NSLog(@"Прямоугольник: w = %i, h = %i", myRect.width, myRect.hight);
    NSLog(@"Начало в (%i, %i)", myRect.origin.x, myRect.origin.y);
    NSLog(@"Плошадь прямоугольника: %i. Периметр прямоугольника: %i", [myRect area], [myRect perimeter]);
    
    Square *mySquare = [[Square alloc]init];
    
    [mySquare setSide:5];
    
    NSLog(@"Квадрат s = %i", mySquare.side);
    NSLog(@"Плошадь квадрата: %i. Периметр квадрата: %i", [mySquare area], [mySquare perimeter]);
    
    
    //Вопроссы о классах
    
    //isMemberOf
    
    if ([mySquare isMemberOfClass:[Square class]] == YES) {
        NSLog(@"mySquare является членом класса Square");
    }
    if ([mySquare isMemberOfClass:[Rectangle class]] == YES) {
        NSLog(@"mySquare является членом класса Rectangle");
    }
    if ([mySquare isMemberOfClass:[NSObject class]] == YES) {
        NSLog(@"mySquare является членом класса NSObject");
    }
    
    //is KindOf
    
    if ([mySquare isKindOfClass:[Square class]] == YES) {
        NSLog(@"mySquare является членом класса или подкласса Square");
    }
    if ([mySquare isKindOfClass:[Rectangle class]] == YES) {
        NSLog(@"mySquare является членом класса или подкласса Rectangle");
    }
    if ([mySquare isKindOfClass:[NSObject class]] == YES) {
        NSLog(@"mySquare является членом класса или подкласса NSObject");
    }
    
    //respondsTo
    if ([mySquare respondsToSelector:@selector(setSide:)] == YES) {
        NSLog(@"mySquare реагирует на метод setSide");
    }
    if ([mySquare respondsToSelector:@selector(setWidht:andHight:)] == YES) {
        NSLog(@"mySquare реагирует на метод setWidht:andHight");
    }
    if ([Square respondsToSelector:@selector(alloc)] == YES) {
        NSLog(@"Класс Square реагирует на метод alloc");
    }
    if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES) {
        NSLog(@"Экземпляры класса Rectangle реагируют на метод setSide");
    }
    if ([Square instancesRespondToSelector:@selector(setSide:)] == YES) {
        NSLog(@"Экземпляры класса Square реагируют на метод setSide");
    }
    if ([Square isSubclassOfClass:[Rectangle class]] == YES) {
        NSLog(@"Square это подкласс прямоугольника");
    }
  
    /*
    [myPoint setX:50 setY:50];
    NSLog(@"Начало в (%i, %i)", myRect.origin.x, myRect.origin.y); 
     */
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
