//
//  AAAViewController.m
//  AspectsShareDemo
//
//  Created by 泡泡 on 2019/6/10.
//  Copyright © 2019 庞仕山. All rights reserved.
//

#import "AAAViewController.h"

@interface AAAViewController ()

@end

@implementation AAAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"AAAViewController - viewWillAppear");
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *label = [[UILabel alloc] init];
    label.text = NSStringFromClass(self.class);
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:label];
    [label sizeToFit];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
