//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *Nic = [[FISStudent alloc]initWithName:@"Nic" andFavThings:@[@"chocolate", @"puppies", @"toothpaste", @"mint sticks", @"Black Eyed Peas"]];
    FISStudent *Gan = [[FISStudent alloc]initWithName:@"Gan" andFavThings:@[@"food", @"Bon Jovi", @"steak", @"Atlanta", @"Georgia", @"southern fried steak"]];
    FISStudent *Cong = [[FISStudent alloc]initWithName:@"Cong" andFavThings:@[@"Apple Watch", @"fruit cups", @"One Direction", @"coding", @"long walks on the beach"]];
    FISStudent *Leo = [[FISStudent alloc]initWithName:@"Leo" andFavThings:@[@"Rihanna", @"Flatiron School", @"the next big thing", @"celery and peanut butter", @"paninis"]];
    
    self.students = [@[Nic, Gan, Cong, Leo] mutableCopy];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.

    NSUInteger sectionCount = self.students.count;
    NSInteger convertedCount = (NSInteger)sectionCount;
    return convertedCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    
    NSUInteger newSection = (NSUInteger)section;
    FISStudent *placeholderStudent = self.students[newSection];
    
    NSUInteger favCount = placeholderStudent.favoriteThings.count;
    NSInteger convertedCount = (NSInteger)favCount;
    return convertedCount;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSUInteger newSection = (NSUInteger)section;
    FISStudent *placeholderStudent = self.students[newSection];
    
    NSString *title = placeholderStudent.name;
    
    return title;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
    NSUInteger cellRow = (NSUInteger)indexPath.row;
    NSUInteger cellSection = (NSUInteger)indexPath.section;
    
    FISStudent *placeholderStudent = self.students[cellSection];
    
    cell.textLabel.text = placeholderStudent.favoriteThings[cellRow];
    cell.detailTextLabel.text = [[NSNumber numberWithInteger:cellRow + 1] stringValue];
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
