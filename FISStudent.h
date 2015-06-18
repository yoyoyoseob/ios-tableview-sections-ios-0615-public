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
@property (nonatomic, strong) NSString *favoriteFood;
@property (nonatomic, strong) NSString *favoriteColor;
@property (nonatomic, strong) NSString *favoriteMusicalArtist;
@property (nonatomic, strong) NSString *favoriteGame;

-(instancetype)init;
-(instancetype)initWithName:(NSString*)name andFavThings:(NSArray *)favoriteThings;

@end
