//
//  YelpAPIClient.h
//  yelpQuery
//
//  Created by Mason Macias on 7/29/15.
//  Copyright (c) 2015 Mason Macias. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BDBOAuth1RequestOperationManager.h"

@interface YelpAPIClient : BDBOAuth1RequestOperationManager

- (instancetype)initWithConsumerKey:(NSString *)consumerKey ConsumerSecret:(NSString *)consumerSecret AccessToken:(NSString *)accessToken AccessSecret:(NSString *)accessSecret;

- (AFHTTPRequestOperation *)searchForTerm:(NSString *)term Latitude:(double)latitude Longitude:(double)longitude Radius:(double)radius Success:(void (^)(AFHTTPRequestOperation *operation, id response))success Failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


@end
