//
//  BaseModel.m
//  Steven_baseModel
//
//  Created by qugo on 16/8/6.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "BaseModel1.h"
#import <objc/runtime.h>

@implementation BaseModel

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}


#pragma mark-下面两个是用来获取成员变量的属性名的
- (NSMutableArray *)descript_forIvar
{
    NSMutableArray *var_arr = [NSMutableArray array];
    unsigned int outCount;
    Ivar *vars = class_copyIvarList(self.class, &outCount);
    if (vars != NULL) {
        for (int i = 0; i<outCount; i++) {
            Ivar v = vars[i];
            const char *var_name = ivar_getName(v);
            const char *var_type = ivar_getTypeEncoding(v);
            NSString *var_name_Str = [NSString stringWithUTF8String:var_name];
            NSString *var_type_Str = [NSString stringWithUTF8String:var_type];
            
            [var_arr addObject:var_name_Str];
            
//            NSLog(@"var_name_Str:%@",var_name_Str);
//            NSLog(@"var_type_Str:%@",var_type_Str);
        }
    }
    free(vars);
    return var_arr;
}
- (NSMutableArray *)descript_forProperty
{
    NSMutableArray *property_arr = [NSMutableArray array];
    unsigned int outCount;;
    objc_property_t *propertys = class_copyPropertyList(self.class, &outCount);
    if (propertys!=NULL) {
        for (int i = 0; i<outCount; i++) {
            objc_property_t property = propertys[i];
            const char *property_name = property_getName(property);
//            const char *property_Attributes = property_getAttributes(property);
            NSString *property_name_Str = [NSString stringWithUTF8String:property_name];
//            NSString *property_Attributes_Str = [NSString stringWithUTF8String:property_Attributes];
            
            [property_arr addObject:property_name_Str];

//            NSLog(@"property_name_Str:%@",property_name_Str);
//            NSLog(@"property_Attributes_Str:%@",property_Attributes_Str);
        }
    }
    free(propertys);
    
    return property_arr;
    
}



@end
