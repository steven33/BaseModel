//
//  UserModel.h
//  Steven_baseModel
//
//  Created by qugo on 16/8/6.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "BaseModel1.h"

@interface UserModel : BaseModel

@property (nonatomic,assign)int      age;
@property (nonatomic,copy)NSString  *name;
@property (nonatomic,copy)NSString  *school;
@property (nonatomic,assign)float    height;
@property (nonatomic,assign)double   score;
@property (nonatomic,copy)NSString  *coutry;




@end
