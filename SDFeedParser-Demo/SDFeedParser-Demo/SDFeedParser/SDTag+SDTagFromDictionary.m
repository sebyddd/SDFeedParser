//
//  SDTag+SDTagFromDictionary.m
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDTag+SDTagFromDictionary.h"

@implementation SDTag (SDTagFromDictionary)

+ (SDTag *)SDTagFromDictionary:(NSDictionary *)dictionary
{
    SDTag *newTag = [SDTag new];
    newTag.ID = [dictionary[@"id"] integerValue];
    newTag.slug = dictionary[@"slug"];
    newTag.title = dictionary[@"title"];
    newTag.tagDescription = dictionary[@"description"];
    newTag.postsCount = [dictionary[@"post_count"] integerValue];
    
    return newTag;
}

@end
