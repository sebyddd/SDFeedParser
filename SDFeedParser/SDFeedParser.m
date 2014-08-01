//
//  SDFeedParser.m
//  SDFeedParser
//
//  Created by Sebastian Dobrincu on 17/07/14.
//  Copyright (c) 2014 Sebastian Dobrincu. All rights reserved.
//

#import "SDFeedParser.h"
#import "AFNetworking.h"

@implementation SDFeedParser

- (void)parseWithURL:(NSString *)urlString withCompletion:(void (^)(NSArray *))completionBlock {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
          
            //Get posts count
            _postsCount = [responseObject[@"count_total"] integerValue];
            
            //Get pages count
            _pagesCount = [responseObject[@"pages"] integerValue];
            
            //Fetch posts
            NSMutableArray *allPosts = [[NSMutableArray alloc]initWithCapacity:[responseObject[@"count_total"] integerValue]];
            NSArray *fetchedPostsArray = responseObject[@"posts"];
            for (NSDictionary *eachPost in fetchedPostsArray) {
                
                SDPost *currentPost = [SDPost new];
                currentPost.ID = [eachPost[@"id"] integerValue];
                currentPost.slug = eachPost[@"slug"];
                currentPost.URL = eachPost[@"url"];
                currentPost.title = eachPost[@"title"];
                currentPost.title_plain = eachPost[@"title_plain"];
                currentPost.thumbnailURL = eachPost[@"thumbnail"];
                currentPost.content = eachPost[@"content"];
                currentPost.excerpt = eachPost[@"excerpt"];
                currentPost.date = eachPost[@"date"];
                currentPost.lastModifiedDate = eachPost[@"modified"];
                
                //Fetch posts category
                NSMutableArray *allCategories = [[NSMutableArray alloc]init];
                NSArray *fetchedCategoriesArray = eachPost[@"categories"];
                for (NSDictionary *eachCategory in fetchedCategoriesArray) {
                    SDCategory *currentCategory = [SDCategory new];
                    currentCategory.ID = [eachCategory[@"id"] integerValue];
                    currentCategory.slug = eachCategory[@"slug"];
                    currentCategory.title = eachCategory[@"title"];
                    currentCategory.description = eachCategory[@"description"];
                    currentCategory.parent = [eachCategory[@"parent"] integerValue];
                    currentCategory.postsCount = [eachCategory[@"post_count"] integerValue];
                    [allCategories addObject:currentCategory];
                }
                currentPost.categoriesArray = [allCategories copy];
                
                //Fetch posts tags
                NSMutableArray *allTags = [[NSMutableArray alloc]init];
                NSArray *fetchedTagsArray = eachPost[@"tags"];
                for (NSDictionary *eachTag in fetchedTagsArray) {
                    SDTag *currentTag = [SDTag new];
                    currentTag.ID = [eachTag[@"id"] integerValue];
                    currentTag.slug = eachTag[@"slug"];
                    currentTag.title = eachTag[@"title"];
                    currentTag.description = eachTag[@"description"];
                    currentTag.postsCount = [eachTag[@"post_count"] integerValue];
                    [allTags addObject:currentTag];
                }
                currentPost.tagsArray = [allTags copy];
                currentPost.authorInfo = eachPost[@"author"];
                
                //Fetch posts comments
                NSMutableArray *allComments = [[NSMutableArray alloc]initWithCapacity:[responseObject[@"comment_count"] integerValue]];
                NSArray *fetchedCommentsArray = eachPost[@"comments"];
                for (NSDictionary *eachComment in fetchedCommentsArray) {
                    SDComment *currentComment = [SDComment new];
                    currentComment.ID = [eachComment[@"id"] integerValue];
                    currentComment.name = eachComment[@"name"];
                    currentComment.url = eachComment[@"url"];
                    currentComment.date = eachComment[@"date"];
                    currentComment.content = eachComment[@"content"];
                    currentComment.parent = [eachComment[@"parent"] integerValue];
                    [allComments addObject:currentComment];
                }
                currentPost.commentsArray = [allComments copy];
                currentPost.commentsCount = [responseObject[@"comment_count"] integerValue];
                currentPost.status = responseObject[@"comment_status"];
            
                [allPosts addObject:currentPost];
            }
            _postsArray = [allPosts copy];
        }
        
        //Trigger completion block
        completionBlock(self.postsArray);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

@end
