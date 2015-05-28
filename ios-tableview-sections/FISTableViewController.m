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
@property (strong, nonatomic) NSArray *students;
@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *tom = [[FISStudent alloc] init];
    FISStudent *jim = [[FISStudent alloc] init];
    FISStudent *mrk = [[FISStudent alloc] init];
    FISStudent *tim = [[FISStudent alloc] init];
    FISStudent *joe = [[FISStudent alloc] init];
    
    tom.name = @"Tom";
    jim.name = @"Jimmy C";
    mrk.name = @"Mark";
    tim.name = @"Tim";
    joe.name = @"Joseph M. Burgess";
    
    tom.favoriteThings = @[@"rollin with the homies", @"nerd stuff (iOS)", @"video games (zelda!)", @"drums (playing/listening)"];
    jim.favoriteThings = @[@"buying apple products", @"board games", @"goin on dates", @"not being an accountant"];
    mrk.favoriteThings = @[@"books/the english language", @"having a ponytail", @"Dungeons & Dragons", @"core data"];
    tim.favoriteThings = @[@"corgi puppies", @"sunshine", @"milkshakes", @"communism", @"banana dog"];
    joe.favoriteThings = @[@"PEANUT BUTTER", @"the idea of hiring an IT person", @"woodworking", @"teaching", @"barcade"];
    
    self.students = @[tom, jim, mrk, tim, joe];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return [self.students count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    FISStudent *thisSectionsStudent = self.students[section];

    return [thisSectionsStudent.favoriteThings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
    
    FISStudent *thisSectionsStudent = self.students[indexPath.section];
    NSString *thisFavoriteThing = thisSectionsStudent.favoriteThings[indexPath.row];
    cell.textLabel.text = thisFavoriteThing;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"%ld", indexPath.row + 1];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return ((FISStudent*) self.students[section]).name;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 2;
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
