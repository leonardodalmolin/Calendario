//
//  CLDDescricaoViewController.m
//  Calendario
//
//  Created by Leonardo Dalmolin on 09/01/14.
//  Copyright (c) 2014 Leonardo Dalmolin. All rights reserved.
//

#import "CLDDescricaoViewController.h"

@interface CLDDescricaoViewController ()

@end

@implementation CLDDescricaoViewController

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
	// Do any additional setup after loading the view.
    _lbDesc.text = _txtDesc;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
