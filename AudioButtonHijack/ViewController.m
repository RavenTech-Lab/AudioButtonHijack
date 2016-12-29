//
//  ViewController.m
//  AudioButtonHijack
//
//  Created by 叔 陈 on 06/12/2016.
//  Copyright © 2016 叔 陈. All rights reserved.
//

#import "ViewController.h"
#import "MPVolumeObserver.h"

@interface ViewController () <MPVolumeObserverProtocol>

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [MPVolumeObserver sharedInstance].delegate = self;
    [[MPVolumeObserver sharedInstance] startObserveVolumeChangeEvents];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)volumeButtonDidUp:(MPVolumeObserver *) button;
{
    NSLog(@"change up");
    self.textLabel.text = @"物理按键音量+点击";
}

- (void)volumeButtonDidDown:(MPVolumeObserver *) button;
{
    NSLog(@"change down");
    self.textLabel.text = @"物理按键音量-点击";
}
@end
