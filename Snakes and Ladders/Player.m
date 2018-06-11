//
//  Player.m
//  Snakes and Ladders
//
//  Created by Will Chew on 2018-06-10.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "Player.h"

@implementation Player

-(void)roll {
    NSInteger rollNumber = arc4random_uniform(6)+1;
    NSLog(@"%ld", rollNumber);
    
}

@end
