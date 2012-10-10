//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Carlo Andaya on 10/8/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (void)drawRect:(CGRect)rect
{
    // Before a view is sent the message drawRect:, a drawing context is created.
    // a CGContext contains drawing information (pen width, color)
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The radius of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    // The thickness of the line should be 10 points wide
    CGContextSetLineWidth(ctx, 10);
    
    // The color of the line should be gray
    CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    
    // Draw concentric circles from the outside in
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        // Add a path to the context
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        
        // Perform drawing instruction; removes path
        CGContextStrokePath(ctx);
    }
}

// We override initWithFrame to set some default properties for all instances of this
// UIView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All HypnosisViews start with a clear background color
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

@end