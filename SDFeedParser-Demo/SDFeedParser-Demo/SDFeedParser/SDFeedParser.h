//
//  SDFeedParser.h
//  SDFeedParser
//
//  Created by Sebastian Dobrincu on 17/07/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDPost.h"
#import "SDCategory.h"
#import "SDTag.h"
#import "SDComment.h"

@interface SDFeedParser : NSObject

typedef void(^CompletionBlock)(NSArray *postsArray);

- (void)parseWithURL:(NSString*)urlString withCompletion:(CompletionBlock)completionBlock;

@property (nonatomic) NSInteger postsCount;
@property (nonatomic) NSArray *postsArray;
@property (nonatomic) NSInteger pagesCount;

@end
