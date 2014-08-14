//
//  ViewController.h
//  SDFeedParser-Demo
//
//  Created by Sebastian Dobrincu on 14/08/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *SDpostsArray;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
