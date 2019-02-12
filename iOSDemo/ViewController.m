//
//  ViewController.m
//  iOSDemo
//
//  Created by xinxi on 2018/4/14.
//  Copyright © 2018年 xinxi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tfUserName;
@synthesize tfPWD;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)userLogin:(id)obj {
    // 实现login方法
    NSString *username = [tfUserName text];
    NSString *pwd = [tfPWD text];
    NSString *message = [NSString stringWithFormat:@"用户名：%@ 密码：%@", username, pwd ];
    NSString *errormessage = @"输入的账号或者密码错误";
    
    NSLog(@"用户名：%@",username);
    NSLog(@"密码：%@",pwd);
    
    NSString *str1 = @"root";
    NSString *str2 = @"123321";
    BOOL bl = [username isEqualToString:str1];
    BOOL b2 = [pwd isEqualToString:str2];
   
    if (bl && b2) {
        NSLog(@"go to true");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Information" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    }else{
        NSLog(@"go to false");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Information" message:errormessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    };
    

    
   
    

}



@end
