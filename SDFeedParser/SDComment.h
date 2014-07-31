//
//  SDComment.h
//  SDFeedParser
//
//  Created by Sebastian Dobrincu on 18/07/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SDComment : NSObject

@property (nonatomic) NSInteger ID;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *url;
@property (nonatomic) NSString *date;
@property (nonatomic) NSString *content;
@property (nonatomic) NSInteger parent;

@end
