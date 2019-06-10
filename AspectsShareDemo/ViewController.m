//
//  ViewController.m
//  AspectsShareDemo
//
//  Created by 庞仕山 on 2019/6/5.
//  Copyright © 2019 庞仕山. All rights reserved.
//

#import "ViewController.h"
#import "AAAViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"ViewController - viewWillAppear");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    AAAViewController *vc = [[AAAViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] init];
    label.text = NSStringFromClass(self.class);
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:label];
    [label sizeToFit];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
}


@end
