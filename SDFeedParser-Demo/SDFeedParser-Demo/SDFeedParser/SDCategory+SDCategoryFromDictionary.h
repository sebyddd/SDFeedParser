//
//  SDCategory+SDCategoryFromDictionary.h
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDCategory.h"

@interface SDCategory (SDCategoryFromDictionary)

+ (SDCategory *)SDCategoryFromDictionary:(NSDictionary *)dictionary;

@end
