//
//  ViewController.m
//  My Analytics
//
//  Created by Walter Gonzalez Domenzain on 25/10/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // TODO(developer) Configure the sign-in button look/feel
    // ...
    // Do any additional setup after loading the view, typically from a nib.
    
//    [FIRAnalytics logEventWithName:kFIREventSelectContent
//                        parameters:@{
//                                     kFIRParameterItemID:[NSString stringWithFormat:@"Home"],
//                                     kFIRParameterItemName:@"TitleHome"
//                                     }];
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnSignInPressed:(id)sender {
    [FIRAnalytics logEventWithName:@"Signin_button"
                        parameters:@{
                                     @"name": @"Google",
                                     @"full_text": @"Gmail"
                                     }];
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [[GIDSignIn sharedInstance] signIn];
}

- (IBAction)btnSignOutPressed:(id)sender {
    NSError *signOutError;
    BOOL status = [[FIRAuth auth] signOut:&signOutError];
    if (!status) {
        NSLog(@"Error signing out: %@", signOutError);
        return;
    }
}
@end
