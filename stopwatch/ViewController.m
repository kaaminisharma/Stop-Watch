//
//  ViewController.m
//  stopwatch
//
//  Created by student14 on 30/06/17.
//  Copyright © 2017 kaamini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    _seconds=00;
    _minutes=00;
    _hours=00;
}

- (IBAction)startTimer:(id)sender {
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

-(void)updateTimer
{
    
    if(_seconds!=60)
    {
       _seconds=_seconds+1;
       _timerCounter.text=[NSString stringWithFormat:@"%d %d %d",_hours,_minutes,_seconds];
    }
    if(_seconds==60)
    {
        _seconds=00;
        _minutes +=1;
        _timerCounter.text=[NSString stringWithFormat:@"%d %d %d",_hours,_minutes,_seconds];
    }
    if(_minutes==60)
    {
        _minutes=00;
        _hours +=1;
        _timerCounter.text=[NSString stringWithFormat:@"%d %d %d",_hours,_minutes,_seconds];
    }
    
    
    /*_ticks += 0.1;
    double _dseconds = fmod(__ticks, 60.0);
    double _dminutes = fmod(trunc(__ticks / 60.0), 60.0);
    double _dhours = trunc(__ticks / 3600.0);
    self.timerLabel.text = [NSString stringWithFormat:@"%02.0f:%02.0f:%04.1f", _dhours, _dminutes, _dseconds]; */
}


- (IBAction)stopTimer:(id)sender {
    [_timer invalidate];
    _timer=nil;
}

- (IBAction)resetTimer:(id)sender {
    [_timer invalidate];
    _timer=nil;
    _seconds=00;
    _minutes=00;
    _hours=00;
    _timerCounter.text=[NSString stringWithFormat:@"%d %d %d",_hours,_minutes,_seconds];
    
    
}


@end
