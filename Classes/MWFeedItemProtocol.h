//
//  MWFeedItemProtocol.h
//  MWFeedParser
//
//  Created by Konstantin Dorodov on 10/10/13.
//  Copyright (c) 2013 Michael Waterfall. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MWFeedItemProtocol <NSObject, NSCoding>

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSDate *updated;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSArray *enclosures;

@end
