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
    self = [self initWithName:@"" andFavThings:@[]];
    return self;
}

-(instancetype)initWithName:(NSString *)name andFavThings:(NSArray *)favoriteThings;
{
    self = [super init];
    if (self){
        _name = name;
        _favoriteThings = [NSArray arrayWithArray:favoriteThings];
    }
    return self;
}


@end
