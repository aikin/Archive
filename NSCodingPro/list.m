//
//  list.m
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import "list.h"
@implementation list

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
        theList = [aDecoder decodeObjectForKey:@"thelist"];
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:theList forKey:@"thelist"];
}


-(void)inittheList{
    
    theList = [[NSMutableArray alloc]init];
    
}

-(void)addModelInfo{
    
    Model *copyModel = [[Model alloc]init];
    copyModel.PeopelName = self.theNewModel.PeopelName;
    copyModel.RestaurantName = self.theNewModel.RestaurantName;
    copyModel.MealName = self.theNewModel.MealName;
    copyModel.MealPrice = self.theNewModel.MealPrice;
    [theList addObject:copyModel];
    
    NSLog(@"%@",theList);
        [self listCoding];
}


-(void)listCoding{
    
    NSString *codingPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    codingPath = [codingPath stringByAppendingPathComponent:@"list.plist"];//在codingpath路径下增加list.plist文件
    NSLog(@"%@",codingPath);
    [NSKeyedArchiver archiveRootObject:theList toFile:codingPath];//归档文件
     list *ortest = [NSKeyedUnarchiver unarchiveObjectWithFile:codingPath];//解档文件
    NSLog(@"%@",ortest);
}




@end
