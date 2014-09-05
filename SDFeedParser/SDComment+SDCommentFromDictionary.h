//
//  SDComment+SDCommentFromDictionary.h
//  SDFeedParser-Demo
//
//  Created by Peter Foti on 9/4/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDComment.h"

@interface SDComment (SDCommentFromDictionary)

+ (SDComment *)SDCommentFromDictionary:(NSDictionary *)dictionary;

@end
