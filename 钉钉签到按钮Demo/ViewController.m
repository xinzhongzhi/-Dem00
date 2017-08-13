//
//  ViewController.m
//  LLRadarView
//
//  Created by 雷亮 on 16/8/31.
//  Copyright © 2016年 Leiliang. All rights reserved.
//

#import "ViewController.h"
#import "LLRadarView.h"


#define HEXCOLOR(hexValue)              [UIColor colorWithRed : ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0 green : ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0 blue : ((CGFloat)(hexValue & 0xFF)) / 255.0 alpha : 1.0]

#define kDefaultColorValue 0x36ae29

@interface ViewController ()

@property (nonatomic, strong) LLRadarView *radarView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.radarView = [[LLRadarView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    _radarView.showCrossline = YES;
    _radarView.needOpacityAnimation = YES;
    [self.view addSubview:_radarView];
    
    self.button.layer.cornerRadius = 40.f;
    self.button.backgroundColor = HEXCOLOR(kDefaultColorValue);
}

- (IBAction)startAnimation:(id)sender {
    [_radarView startAnimation];
}

- (IBAction)stopAnimation:(id)sender {
    [_radarView stopAnimation];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
