//
//  SDPost+SDPostFromDictionary.h
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDPost.h"

@interface SDPost (SDPostFromDictionary)

+ (SDPost *)SDPostFromDictionary:(NSDictionary *)dictionary;

@end
