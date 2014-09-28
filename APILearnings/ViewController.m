//
//  ViewController.m
//  APILearnings
//
//  Created by shashi kumar on 9/27/14.
//  Copyright (c) 2014 HCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *fbButton;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupBackgroundView];
    [self setupFbButton];
}

- (void)setupBackgroundView {
    UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    backgroundView.image = [UIImage imageNamed:@"blurred-background.jpg"];
    [self.view addSubview:backgroundView];
}

- (void)setupFbButton {
    CGRect frame = CGRectMake(20, CGRectGetHeight(self.view.frame) / 2, 100, 60);
    self.fbButton = [self buttonWithImageName:@"facebook" title:@"log in" frame:frame];
    [self.view addSubview:self.fbButton];
}

- (UIButton *)buttonWithImageName:(NSString *)imageName title:(NSString *)title frame:(CGRect)frame {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
