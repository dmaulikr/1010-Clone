//
//  Cube.m
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import "Cube.h"

@implementation Cube

+(instancetype)cubeWithCenterPosition:(CGPoint)point
                             AndColor:(NSColor *)color{
    
    return [[Cube alloc] initWithCenterPosition:point
                                       AndColor:color];
}

-(id)initWithCenterPosition:(CGPoint)point
                   AndColor:(NSColor *)color{
    
    self = [super init];
    if (self) {
        self.color = color;
        
        self.node = [SKShapeNode shapeNodeWithRect:CGRectMake(point.x, point.y, 50, 50)
                                      cornerRadius:4.0f];
        
        self.node.fillColor = color;
        self.node.strokeColor = [NSColor clearColor];
        
    }
    return self;
}

@end
