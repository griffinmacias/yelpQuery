//
//  ViewController.m
//  yelpQuery
//
//  Created by Mason Macias on 7/29/15.
//  Copyright (c) 2015 Mason Macias. All rights reserved.
//

#import "ViewController.h"
#import "YelpAPIClient.h"
#import "Constants.h"
@interface ViewController ()
@property (nonatomic, strong) YelpAPIClient *yelpClient;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.yelpClient = [[YelpAPIClient alloc] initWithConsumerKey:YELP_CONSUMER_KEY ConsumerSecret:YELP_CONSUMER_SECRET AccessToken:YELP_TOKEN AccessSecret:YELP_TOKEN_SECRET];
    
    [self.yelpClient searchForTerm:@"food" Latitude:40.7052020 Longitude:-74.0131660 Radius:1000 Success:^(AFHTTPRequestOperation *operation, id response) {
        NSLog(@"%@",response);
    } Failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error.description);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
