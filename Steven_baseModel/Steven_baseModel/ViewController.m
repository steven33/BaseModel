//
//  ViewController.m
//  Steven_baseModel
//
//  Created by qugo on 16/8/6.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"
#import "UserModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dic = @{@"age":@13,
                          @"name":@"steven",
                          @"school":@"湖南",
                          @"height":@18.9
                          };
    
    UserModel *model = [[UserModel alloc] initWithDic:dic];
    UserModel *model2;
    
    NSDictionary *model_dic = [model dictionaryWithValuesForKeys:[model descript_forIvar]];
    NSLog(@"%@",model_dic);
   
}


@end
