//
//  TestCoding.m
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import "TestCoding.h"

@implementation TestCoding




- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
        theList = [aDecoder decodeObjectForKey:@"name"];
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    theList=[NSMutableArray arrayWithObject:@"dfk"];
    [aCoder encodeObject:theList forKey:@"name"];
}
@end
