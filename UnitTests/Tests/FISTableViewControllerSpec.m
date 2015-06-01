//
//  FISTableViewControllerSpec.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 6/1/15.
//  Copyright 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISAppDelegate.h"
#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISTableViewController)

describe(@"FISTableViewController", ^{
    __block UIWindow *mainWindow;
    __block FISTableViewController *fisTVC;

    beforeAll(^{
        // set up a fresh FISTableViewController in the window
        mainWindow = ((FISAppDelegate*)[UIApplication sharedApplication].delegate).window;
        UINavigationController *navController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
        fisTVC = navController.childViewControllers[0];
        [mainWindow setRootViewController: fisTVC];
    });
    
    it(@"has more than one section", ^{
        expect(fisTVC.tableView.numberOfSections).to.beGreaterThan(1);
    });
         
    it(@"has indented rows", ^{
        NSIndexPath *indexPath = [[NSIndexPath alloc] initWithIndex: 0];
        NSInteger indentationLevel = [fisTVC.tableView.delegate tableView:fisTVC.tableView indentationLevelForRowAtIndexPath:indexPath];
        expect(indentationLevel).toNot.equal(0);
    });
    
    it(@"", ^{
        
    });
});

SpecEnd
