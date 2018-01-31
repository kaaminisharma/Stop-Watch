//
//  ViewController.h
//  stopwatch
//
//  Created by student14 on 30/06/17.
//  Copyright © 2017 kaamini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;
- (IBAction)resetTimer:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *timerCounter;

@property(nonatomic,retain) NSTimer *timer;
@property int seconds,minutes,hours;
@end

