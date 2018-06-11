//
//  main.m
//  Snakes and Ladders
//
//  Created by Will Chew on 2018-06-10.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char roll[255];
         NSLog(@"type r to roll");
       
        
        
        Player *player1 = [Player new];
        
       
        while (YES) {
            fgets(roll, 255, stdin);
            NSString *rollString = [NSString stringWithCString:roll encoding:NSUTF8StringEncoding];
            NSString *rollTrim = [rollString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([rollTrim isEqualToString:@"roll"] || [rollTrim isEqualToString:@"r"]) {
            [player1 roll];
            }
        }
    }
    return 0;
}
