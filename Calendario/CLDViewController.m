//
//  CLDViewController.m
//  Calendario
//
//  Created by Leonardo Gisler Dalmolin on 08/01/14.
//  Copyright (c) 2014 Leonardo Dalmolin. All rights reserved.
//

#import "CLDViewController.h"
#import "CLDDiasViewController.h"

@interface CLDViewController ()

@end

@implementation CLDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)actButton:(id)sender {
    [self performSegueWithIdentifier:@"gotoDias" sender:sender];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"gotoDias"]) {
        CLDDiasViewController *cldd = (CLDDiasViewController *)segue.destinationViewController;
        cldd.title = [(UIButton *) sender currentTitle];
    }
}

@end
