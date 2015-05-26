//
//  UIAlertView+Timer.h
//  Selfie
//
//  Created by Subash Luitel on 5/26/15.
//  Copyright (c) 2015 Thinkboks LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Timer)

+(void)showAlertWithTitle:(NSString *)title message:(NSString *)message forTime:(NSInteger)timeInSeconds;

@end
