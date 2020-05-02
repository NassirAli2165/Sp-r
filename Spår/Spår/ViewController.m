//
//  ViewController.m
//  Spår
//
//  Created by Nassir Ali on 4/22/20.
//  Copyright © 2020 Nassir Ali. All rights reserved.
//

#import "ViewController.h"
@import Firebase;


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *workoutsTable1;
/*
@property (strong, nonatomic) FIRDatabaseReference *ref;
@property (strong, nonatomic) NSMutableArray<FIRDataSnapshot *> *messages;
@property (strong, nonatomic) FIRStorageReference *storageRef;
@property (nonatomic, strong) FIRRemoteConfig *remoteConfig;
 */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //db = Firebase.Firestore();
    
}


- (IBAction)signOut:(UIButton *)sender {
    FIRAuth *firebaseAuth = [FIRAuth auth];
    NSError *signOutError;
    BOOL status = [firebaseAuth signOut:&signOutError];
    if (!status) {
        NSLog(@"Error signing out: %@", signOutError);
        return;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
