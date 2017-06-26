//
//  UIUtils.m
//  ImmortalWater
//
//  Created by 沈昕权 on 16/7/28.
//  Copyright © 2016年 沈昕权. All rights reserved.
//

#import "UIUtils.h"

@implementation UIUtils

+(NSString *) formatDateString:(NSString *)dateString{
//  1. dateString -> NSDate
//  2. 计算时间差
//  3. 转换为字符串
    
    NSString *format =  @"E MMM dd HH:mm:ss zz yyyy";
    NSDate *date = [self dateFromString:dateString withFormat:format];
    
    NSTimeInterval distance = [[NSDate new] timeIntervalSinceDate:date];
    
//    1分钟以内 ： 刚刚
//    60分钟以内： 几分钟前
//    60分钟-24小时： 几小时前
//    >24小时 ： 几天前
//    >3*24  :  显示日期
    
    
    if (distance < 24*60*60) {
        if (distance< 60*60) {
            if (distance<60) {
                
                return @"刚刚";
                
            }
            return [NSString stringWithFormat:@"%d分钟前",(int)distance/60];
            
        }
        
        return [NSString stringWithFormat:@"%d小时前",(int)distance/60/60];
    }else{
        
        return [NSString stringWithFormat:@"%d天前",(int)distance/60/60/24];
        
    }
    

}

//把日期字符串转换为NSDate  根据日期格式
+(NSDate*) dateFromString:(NSString *)dateString withFormat:(NSString *)format{

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return  [formatter dateFromString:dateString];
}

+(NSString *) stringFromDate:(NSDate *)date withFormat:(NSString *)format{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return  [formatter stringFromDate:date];
}




@end
