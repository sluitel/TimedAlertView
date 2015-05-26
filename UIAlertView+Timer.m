//
//  UIAlertView+Timer.m
//  Selfie
//
//  Created by Subash Luitel on 5/26/15.
//  Copyright (c) 2015 Thinkboks LLC. All rights reserved.
//

#import "UIAlertView+Timer.h"

@implementation UIAlertView (Timer)

+(void)showAlertWithTitle:(NSString *)title message:(NSString *)message forTime:(NSInteger)timeInSeconds {
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
	[alertView show];
	NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:@[alertView] forKeys:@[@"alertView"]];
	[NSTimer scheduledTimerWithTimeInterval:timeInSeconds target:self selector:@selector(stopTimerwithNotification:) userInfo:userInfo repeats:NO];
	
}

+(void)stopTimerwithNotification:(NSNotification *)notification {
	UIAlertView *alertView = (UIAlertView *)[notification.userInfo objectForKey:@"alertView"];
	[alertView dismissWithClickedButtonIndex:0 animated:NO];
}

@end
