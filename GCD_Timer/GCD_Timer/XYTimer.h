//
//  XYTimer.h
//  GCD_Timer
//
//  Created by 渠晓友 on 2020/7/17.
//  Copyright © 2020 渠晓友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYTimer : NSObject

+ (NSString *)execTask:(void(^)(void))task
           start:(NSTimeInterval)start
        interval:(NSTimeInterval)interval
         repeats:(BOOL)repeats
           async:(BOOL)async;

+ (NSString *)execTask:(id)target
              selector:(SEL)selector
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (void)cancelTask:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
