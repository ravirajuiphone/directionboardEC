//
//  ViewController.m
//  SampleImageEC
//
//  Created by Kodiak Networks on 22/04/14.
//  Copyright (c) 2014 Sample. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    btn1  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectZero;
    [btn1 addTarget:self action:@selector(show:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)show:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"WOW" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

- (void) touchesBegan:(NSSet *)_touches withEvent:(UIEvent *)_event
{
	
    UITouch* touch = [_touches anyObject];
    CGPoint location = [touch locationInView:_img];
    CGRect rect = [UIScreen mainScreen].applicationFrame;
    //	NSLog(@"location points x->%f && y->%f",location.x,location.y);
	//if(location.x>80 && location.x<260 && location.y>140 && location.y<320)
    if(location.x > rect.origin.x + 200 && location.x < rect.origin.x + 240 && location.y > 240 && location.y < 245 )
    {
		btn1.frame = CGRectMake(location.x, location.y, 60, 15);
	}
}

@end
