//
//  SDComment+SDCommentFromDictionary.m
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDComment+SDCommentFromDictionary.h"

@implementation SDComment (SDCommentFromDictionary)

+ (SDComment *)SDCommentFromDictionary:(NSDictionary *)dictionary
{
    SDComment *newComment = [SDComment new];
    newComment.ID = [dictionary[@"id"] integerValue];
    newComment.name = dictionary[@"name"];
    newComment.url = dictionary[@"url"];
    newComment.date = dictionary[@"date"];
    newComment.content = dictionary[@"content"];
    newComment.parent = [dictionary[@"parent"] integerValue];
    
    return newComment;
}

@end
