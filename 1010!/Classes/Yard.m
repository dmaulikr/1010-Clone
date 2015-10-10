//
//  Yard.m
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import "Yard.h"

@implementation Yard

- (instancetype)initWithScreenSize:(CGRect)screenRect
{
    self = [super init];
    if (self) {
        
        int xCenter = (screenRect.size.width-12*55)/2;
     
        NSMutableArray* cells = [NSMutableArray new];
        for (int x=1; x<=10; x++) {
            for (int y=1;y<=10;y++) {
                SKShapeNode* rect = [SKShapeNode shapeNodeWithRect:CGRectMake(x*55+xCenter, y*55+120, 50, 50)
                                                      cornerRadius:4.0f];
                rect.fillColor = [NSColor colorWithCalibratedWhite:0.259 alpha:1.000];
                rect.strokeColor = [NSColor clearColor];
                
                [cells addObject:rect];
            }
        }
        
        self.cellNodes = cells;
        self.cubes = [NSMutableArray new];
        
    }
    return self;
}


-(CGPoint)pointOfCellAtX:(int)x Y:(int)y {
    return CGPointMake(x*55+175, y*55+120);
}


@end
