//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Yoseob Lee on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (nonatomic, strong) NSArray *favoriteThings;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSDictionary *favoriteFood;
@property (nonatomic, strong) NSDictionary *favoriteColor;
@property (nonatomic, strong) NSDictionary *favoriteMusicalArtist;
@property (nonatomic, strong) NSDictionary *favoriteGame;

-(instancetype)init;
-(instancetype)initWithName:(NSString *)name
                    favFood:(NSString *)food
                   favColor:(NSString *)color
           favMusicalArtist:(NSString *)artist
                    favGame:(NSString *)game
                inFavThings:(NSArray *)favoriteThings;

@end
