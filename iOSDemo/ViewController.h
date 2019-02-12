//
//  ViewController.h
//  iOSDemo
//
//  Created by xinxi on 2018/4/14.
//  Copyright © 2018年 xinxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UITextField *tfUserName;
    UITextField *tfPWD;
}

@property (nonatomic, retain) IBOutlet UITextField *tfUserName;
@property (nonatomic, retain) IBOutlet UITextField *tfPWD;

- (IBAction) userLogin:(id)obj;
//定义login方法 

@end

