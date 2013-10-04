//
//  ViewController.m
//  mp3
//
//  Created by linhnguyen on 9/25/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

BOOL isPlay = YES;
- (void)viewDidLoad
{
    [super viewDidLoad];
    [name setFrame:CGRectMake(-50, 300.0, 50.0, 20)];
    [name setText:@"Dành tặng em ^^"];
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"abc" ofType:@"mp3"]];
    NSError *error;
    audioPalyer = [[AVAudioPlayer alloc] initWithContentsOfURL: url error: &error];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playMP3:(id)sender {
    if (isPlay) {
        [audioPalyer play];
        [UIView animateWithDuration:2.5 animations:^(void){
            [name setFrame:CGRectMake(135, 300, 50, 20)];
        } completion:^(BOOL finished){
            
        }];
        
        isPlay = NO;
    }
    else {
        [audioPalyer stop];
        [UIView animateWithDuration:2.5 animations:^(void){
            [name setFrame:CGRectMake(-50, 300, 50, 20)];
        } completion:^(BOOL finished){
            
        }];

        isPlay = YES;
    }
    
}

- (void)dealloc {
    [name release];
    [super dealloc];
}
@end
