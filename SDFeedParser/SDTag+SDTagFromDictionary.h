//
//  SDTag+SDTagFromDictionary.h
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDTag.h"

@interface SDTag (SDTagFromDictionary)

+ (SDTag *)SDTagFromDictionary:(NSDictionary *)dictionary;

@end
