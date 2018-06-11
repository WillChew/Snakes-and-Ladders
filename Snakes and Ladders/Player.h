//
//  Player.h
//  Snakes and Ladders
//
//  Created by Will Chew on 2018-06-10.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property NSDictionary* gameLogic;
@property BOOL gameOver;

-(void)roll;

@end
