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
        _gameLogic = @{@4:@14, @9:@31, @17:@7, @20:@38, @28:@84, @40:@59, @51:@67, @63:@81, @64:@60, @89:@26, @95:@75, @99:@78};
        _gameOver = NO;
    }
    return self;
}

-(void)roll {
    NSInteger rollNumber = arc4random_uniform(6)+1;
    _currentSquare += rollNumber;
    NSLog(@"You rolled a %ld", rollNumber);
    NSNumber *current = [NSNumber numberWithInteger:_currentSquare];
    
    
    NSDictionary *ladders = @{@4:@14, @9:@31, @20:@38, @28:@84, @40:@59, @51:@67, @63:@81};
    NSDictionary *snakes = @{@17:@7, @64:@60, @89:@26, @95:@75, @99:@78};
    
    
    
    if ([[ladders allKeys]containsObject:current]){
        NSLog(@"Stairway to heaven!");
        NSNumber *beforeLadder = current;
        NSNumber *afterLadder = ladders[current];
        _currentSquare = [afterLadder integerValue];
        
        NSLog(@"you jumped from %@ to %ld", beforeLadder, _currentSquare);
    }
    
    if ([[snakes allKeys]containsObject:current]){
        NSLog(@"You got snaked!");
        NSNumber *beforeSnake = current;
        NSNumber *afterSnake = snakes[current];
        _currentSquare = [afterSnake integerValue];
        
        NSLog(@"you slid from %@ to %ld", beforeSnake, _currentSquare);

    }
    else {
        
        NSLog(@"You landed on:%ld", _currentSquare);
    }
    
    if (_currentSquare >= 100) {
        _gameOver = YES;
    }
    
    if (_currentSquare == 100) {
        NSLog(@"YOU WIN!");
    }

}

@end
