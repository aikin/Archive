//
//  list.h
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"

@interface list : NSObject<NSCoding>{
    
    NSMutableArray *theList;
}

@property(nonatomic,strong)Model *theNewModel;

-(void)inittheList;
-(void)addModelInfo;


@end
