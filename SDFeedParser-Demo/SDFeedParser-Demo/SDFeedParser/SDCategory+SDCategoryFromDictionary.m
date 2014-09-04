//
//  SDCategory+SDCategoryFromDictionary.m
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDCategory+SDCategoryFromDictionary.h"

@implementation SDCategory (SDCategoryFromDictionary)

+ (SDCategory *)SDCategoryFromDictionary:(NSDictionary *)dictionary
{
    SDCategory *newCategory = [SDCategory new];
    
    newCategory.ID = [dictionary[@"id"] integerValue];
    newCategory.slug = dictionary[@"slug"];
    newCategory.title = dictionary[@"title"];
    newCategory.categoryDescription = dictionary[@"description"];
    newCategory.parent = [dictionary[@"parent"] integerValue];
    newCategory.postsCount = [dictionary[@"post_count"] integerValue];
    
    return newCategory;
}

@end
