//
//  BaseModel.h
//  Steven_baseModel
//
//  Created by qugo on 16/8/6.
//  Copyright © 2016年 steven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

- (instancetype)initWithDic:(NSDictionary *)dic;
- (NSMutableArray *)descript_forIvar;
- (NSMutableArray *)descript_forProperty;

@end


