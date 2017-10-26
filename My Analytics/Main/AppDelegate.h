//
//  AppDelegate.h
//  My Analytics
//
//  Created by Walter Gonzalez Domenzain on 25/10/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@import Firebase;
@import GoogleSignIn;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>
@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

