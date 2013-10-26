//
//  ViewController.h
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "list.h"

@interface ViewController : UIViewController{
    
    list *useList;
}
@property(nonatomic,strong)list *useList;
@end
