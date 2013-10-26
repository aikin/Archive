//
//  Model.h
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject<NSCoding>



@property(nonatomic,strong)NSString *PeopelName;
@property(nonatomic,strong)NSString *RestaurantName;
@property(nonatomic,strong)NSString *MealName;
@property(nonatomic,strong)NSString *MealPrice;



@end
