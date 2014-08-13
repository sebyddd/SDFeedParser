![SDFeedParser](https://dl-web.dropbox.com/get/Others/sdfeedparser.png?_subject_uid=208453269&w=AAA2hgVhn52CoPb6QW9uMArU7Yh44kyRklieMcPejSOvlA)

SDFeedParser
============

Objective-C parser for the JSON API (https://wordpress.org/plugins/json-api/) plugin for Wordpress


## Installation
1. To install this library, simply copy the 'SDFeedParser' folder into your project, and import it using:

		#import "SDFeedParser.h"

2. You will also need AFNetworking in order to use this library. You can find it here: https://github.com/AFNetworking/AFNetworking

_*CocoaPods coming soon_


## How to use
       SDFeedParser *parser = [[SDFeedParser alloc]init];
       [parser parseWithURL:@"http://yourblogURL.com/?json=1" withCompletion:^(NSArray *postsArray) {
                NSLog(@"%@", postsArray);
        }];


## Available properties
**SDPost:**

        @property (nonatomic) NSInteger ID;
        @property (nonatomic) NSString *URL;
        @property (nonatomic) NSString *slug;
        @property (nonatomic) NSString *title;
        @property (nonatomic) NSString *plainTitle;
        @property (nonatomic) NSString *thumbnailURL;
        @property (nonatomic) NSString *status;
        @property (nonatomic) NSString *content;
        @property (nonatomic) NSString *plainContent;
        @property (nonatomic) NSInteger contentReadingMinutes;
        @property (nonatomic) NSString *excerpt;
        @property (nonatomic) NSString *date;
        @property (nonatomic) NSString *lastModifiedDate;
        @property (nonatomic) NSArray *categoriesArray;
        @property (nonatomic) NSArray *tagsArray;
        @property (nonatomic) NSDictionary *authorInfo;
        @property (nonatomic) NSArray *commentsArray;
        @property (nonatomic) NSInteger commentsCount;
        @property (nonatomic) NSString *commentsStatus;

**SDComment:**

        @property (nonatomic) NSInteger ID;
        @property (nonatomic) NSString *name;
        @property (nonatomic) NSString *url;
        @property (nonatomic) NSString *date;
        @property (nonatomic) NSString *content;
        @property (nonatomic) NSInteger parent;

**SDCategory:**

        @property (nonatomic) NSInteger ID;
        @property (nonatomic) NSString *slug;
        @property (nonatomic) NSString *title;
        @property (nonatomic) NSString *description;
        @property (nonatomic) NSInteger parent;
        @property (nonatomic) NSInteger postsCount;


**SDTag:**

        @property (nonatomic) NSInteger ID;
        @property (nonatomic) NSString *slug;
        @property (nonatomic) NSString *title;
        @property (nonatomic) NSString *description;
        @property (nonatomic) NSInteger postsCount;