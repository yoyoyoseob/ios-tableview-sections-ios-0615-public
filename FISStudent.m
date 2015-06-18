//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Yoseob Lee on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

-(instancetype)init{
    self = [self initWithName:@"" favFood:@"" favColor:@"" favMusicalArtist:@"" favGame:@"" inFavThings:@[]];
    return self;
}

-(instancetype)initWithName:(NSString *)name
                    favFood:(NSString *)food
                   favColor:(NSString *)color
           favMusicalArtist:(NSString *)artist
                    favGame:(NSString *)game
                inFavThings:(NSArray *)favoriteThings
{
    self = [super init];
    if (self){
        _name = name;
        _favoriteColor = @{@"Favorite Color": color};
        _favoriteFood = @{@"Favorite Food": food};
        _favoriteMusicalArtist = @{@"Favorite Musical Artist": artist};
        _favoriteGame = @{@"Favorite Game": game};
        _favoriteThings = @[_favoriteColor, _favoriteFood, _favoriteMusicalArtist, _favoriteGame];
    }
    return self;
}

@end
