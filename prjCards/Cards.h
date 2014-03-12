//
//  Cards.h
//  prjCards
//
//  Created by Matheus Castro on 11/03/14.
//  Copyright (c) 2014 matheuscastro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cards : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(Cards *)card;
- (int)matchA:(NSArray *)otherCards;



@end
