//
//  ViewController.m
//  GCD_Timer
//
//  Created by 渠晓友 on 2020/7/17.
//  Copyright © 2020 渠晓友. All rights reserved.
//

#import "ViewController.h"
#import "XYTimer.h"

@interface ViewController ()
@property (copy, nonatomic) NSString *task;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    
    self.task = [XYTimer execTask:self
                         selector:@selector(doTask)
                            start:2.0
                         interval:1.0
                          repeats:YES
                            async:NO];
    
//    self.task = [MJTimer execTask:^{
//        NSLog(@"111111 - %@", [NSThread currentThread]);
//    } start:2.0 interval:-10 repeats:NO async:NO];
}

- (void)doTask
{
    NSLog(@"doTask - %@", [NSThread currentThread]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [XYTimer cancelTask:self.task];
}

@end
