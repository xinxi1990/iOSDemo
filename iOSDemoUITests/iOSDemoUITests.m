//
//  iOSDemoUITests.m
//  iOSDemoUITests
//
//  Created by xinxi on 2018/4/14.
//  Copyright © 2018年 xinxi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface iOSDemoUITests : XCTestCase

@property (nonatomic,strong) ViewController *vc;

@end







@implementation iOSDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testlogintrue{
    // 测试正常登录
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *textField = app.textFields[@"\u5bc6\u7801"];
    [textField tap];
    [textField typeText:@"root"];
    
    XCUIElement *textField2 = app.textFields[@"\u7528\u6237\u540d"];
    [textField2 tap];
    [textField2 typeText:@"123321"];
    [app.buttons[@"\u767b\u5f55"] tap];
    [app.alerts[@"Information"].buttons[@"OK"] tap];
    
}


- (void)testloginfalse{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *textField = app.textFields[@"\u5bc6\u7801"];
    [textField tap];
    [textField typeText:@"root"];
    
    XCUIElement *textField2 = app.textFields[@"\u7528\u6237\u540d"];
    [textField2 tap];
    [textField2 typeText:@"123123"];
    
    XCUIElement *button = app.buttons[@"\u767b\u5f55"];
    [button tap];
    [app.alerts[@"Information"].buttons[@"OK"] tap];
    
    
    
//    XCTAssertEqual(<#expression1#>, <#expression2, ...#>);
    // 测试登录失败,
    
    
}


@end
