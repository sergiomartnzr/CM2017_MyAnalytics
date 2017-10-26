//
//  ViewController.h
//  My Analytics
//
//  Created by Walter Gonzalez Domenzain on 25/10/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;

@interface Home : UIViewController<GIDSignInUIDelegate>
- (IBAction)btnSignInPressed:(id)sender;

@end

