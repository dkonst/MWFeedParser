//
//  MWFeedInfoProtocol.h
//  MWFeedParser
//
//  Created by Konstantin Dorodov on 10/10/13.
//  Copyright (c) 2013 Michael Waterfall. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MWFeedInfoProtocol <NSObject, NSCoding>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *image;

@end
