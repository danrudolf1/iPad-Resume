//
//  ViewController.m
//  Resume
//
//  Created by Dan Rudolf on 7/11/14.
//  Copyright (c) 2014 com.rudolfmedia. All rights reserved.
//

#import "ViewController.h"
#import "SkillCell.h"
#import "SelectionsTableViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *skillsCollectionView;

@property NSArray *skillsArray;
@property NSArray *selectionsArray;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.skillsArray = @[@"Objective-C",
                         @"Git",
                         @"Adgile Mehtodology",
                         @"UIKit",
                         @"CocoaPods Libraries",
                         @"Cocoa Touch Frameworks",
                         @"Data Modeling",
                         @"API Interaction",
                         @"UI/UX Design",
                         @"Swift",
                         @"Android Development",
                         @"Adobe Creative Suite"];

    self.selectionsArray = @[@"Skills",
                             @"Education",
                             @"< / Code  >",
                             @"Experience",
                             @"Recent"];
}

#pragma mark - CollectionView Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.skillsArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    SkillCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *text = [self.skillsArray objectAtIndex:indexPath.row];
    cell.layer.cornerRadius = cell.frame.size.height/2;
    cell.layer.masksToBounds = YES;
    cell.cellLabel.text = text;

    return cell;

}


#pragma Mark - Tableview Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.selectionsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    SelectionsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectionCell"];

    cell.backgroundColor = [UIColor colorWithRed:0.1215 green:0.1294 blue:0.1411 alpha:1.0];

    NSString *option = [self.selectionsArray objectAtIndex:indexPath.row];

    cell.selectionLable.text = option;

    return cell;

}

@end
