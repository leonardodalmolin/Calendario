//
//  CLDDiasViewController.m
//  Calendario
//
//  Created by Leonardo Gisler Dalmolin on 08/01/14.
//  Copyright (c) 2014 Leonardo Dalmolin. All rights reserved.
//

#import "CLDDiasViewController.h"

@interface CLDDiasViewController ()

@end

@implementation CLDDiasViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addMyButton];
    
	// Do any additional setup after loading the view
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addMyButton{    // Method for creating button, with background image and other properties
    NSDictionary *meses = @{
                            @"Janeiro" : [NSNumber numberWithInt:31],
                            @"Fevereiro" : [NSNumber numberWithInt:28],
                            @"Março" : [NSNumber numberWithInt:31]
                            };
    
    NSInteger x = 35;
    NSInteger y = 150;
    
    NSInteger m = 1;
    
    for (NSString* akey in [meses allKeys]) {
        NSString* aValue = [meses valueForKey:akey];
        if ([self.title isEqualToString:akey])
            m = [aValue integerValue]+1;
    }
    
    for (int i=1; i < m; i++) {
        
        UIButton *dia = [UIButton buttonWithType:UIButtonTypeRoundedRect]; // instend of "Click Me" you can write your own message/Label
        [dia setTitle:[NSString stringWithFormat:@"%i",i]  forState:UIControlStateNormal]; // create the Rectangle Frame with specified size
        dia.frame = CGRectMake(x, y, 30, 30); // x,y,width,height
        //if (i < 4)
        //    dia.enabled = NO;
        [self.view addSubview:dia];// add button to your view.
        
        if (i%7 == 0)
            y = y+40;
        if (x >= 240)
            x = 35;
        else
            x = x + 38;
        
        
    }
    
}

@end
