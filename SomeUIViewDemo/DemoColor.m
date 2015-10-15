//
//  DemoColor.m
//  SomeUIViewDemo
//
//  Created by student on 10/15/15.
//  Copyright © 2015 student. All rights reserved.
//

#import "DemoColor.h"

#import "UIColor+Extend.h"

@interface DemoColor ()

@end

@implementation DemoColor

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    UILabel *label =[[UILabel alloc] initWithFrame:CGRectMake(40, 100, 100, 40)];
    label.backgroundColor = [[UIColor alloc] initWithHex:@"FFF000" alpha:1.0];
    [self.view addSubview:label];
    
    
}

@end
