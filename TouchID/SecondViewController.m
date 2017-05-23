//
//  SecondViewController.m
//  TouchID
//
//  Created by Zup Beta on 23/05/17.
//  Copyright © 2017 DevTech. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action

- (IBAction)returnView:(id)sender {
    NSArray *viewControllersFromStack = [self.navigationController viewControllers];
    for(UIViewController *currentVC in [viewControllersFromStack reverseObjectEnumerator]) {
        [currentVC.navigationController popViewControllerAnimated:NO];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 
 
 Framework
 LocalAuthentication
 Request authentication from users through passphrases or biometrics.
 
 Overview
 The Local Authentication framework provides facilities for requesting authentication from users with specified security policies.
 The localized string you present to the user should provide a clear reason for why you are requesting they authenticate themselves, and what action you will be taking based on that authentication.
 

 Classes
 LAContext
 An LAContext object represents an authentication context. The LAContext class provides a programmatic interface for evaluating authentication policies and access controls, managing credentials, and invalidating authentication contexts.

 More info: https://developer.apple.com/reference/localauthentication?language=objc
*/

@end
