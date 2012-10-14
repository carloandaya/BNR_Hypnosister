//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Carlo Andaya on 10/8/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view; // need an instance variable for zooming
}

@property (strong, nonatomic) UIWindow *window;

@end
