//
//  Player.m
//  Snakes and Ladders
//
//  Created by Will Chew on 2018-06-10.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
    }
    return self;
}

-(void)roll {
    NSInteger rollNumber = arc4random_uniform(6)+1;
    _currentSquare += rollNumber;
    NSLog(@"%ld", rollNumber);
    NSLog(@"%ld", _currentSquare);
    
}

@end
