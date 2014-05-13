//
//  dsViewController.m
//  Arduino
//
//  Created by dReyes on 4/3/14.
//  Copyright (c) 2014 dReyes. All rights reserved.
//

#import "dsViewController.h"

@interface dsViewController ()

@end

@implementation dsViewController
@synthesize myWebView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switch2:(id)sender {
    UISwitch *theSwitch = (UISwitch *) sender;
    int z = 0;
    if(theSwitch.isOn && z==0){
        NSURL *url = [NSURL URLWithString:@"http://192.168.1.177/$4"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
        z++;
    }
    if(theSwitch.isOn && z==1){
        NSURL *url = [NSURL URLWithString:@"http://192.168.1.177/$3"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
        z--;
    }
}

- (IBAction)switchPressed:(id)sender {
    
    UISwitch *theSwitch = (UISwitch *) sender;
    if(theSwitch.isOn){
        NSURL *url = [NSURL URLWithString:@"http://192.168.1.177/$1"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    } else {
        NSURL *url = [NSURL URLWithString:@"http://192.168.1.177/$2"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
}

@end
