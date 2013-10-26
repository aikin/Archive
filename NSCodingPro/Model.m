//
//  Model.m
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import "Model.h"

@implementation Model


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
        
    self.PeopelName = [aDecoder decodeObjectForKey:@"peoplename"];
    self.RestaurantName = [aDecoder decodeObjectForKey:@"restaurantname"];
    self.MealName = [aDecoder decodeObjectForKey:@"mealname"];
    self.MealPrice = [aDecoder decodeObjectForKey:@"mmealprice"];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.PeopelName forKey:@"peoplename"];
    [aCoder encodeObject:self.RestaurantName forKey:@"restaurantname"];
    [aCoder encodeObject:self.MealName forKey:@"mealname"];
    [aCoder encodeObject:self.MealPrice forKey:@"mealprice"];
}
@end
