//
//  SpawnPanel.m
//  1010!
//
//  Created by Luis von der Eltz on 16.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import "SpawnPanel.h"

@implementation SpawnPanel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.origin1 = CGPointMake(100, 80);
        self.origin2 = CGPointMake(400, 80);
        self.origin3 = CGPointMake(700, 80);
    }
    return self;
}

-(void)spawnShapes {
    
    self.shape1 = [Shape shapeWithType:STNine
                             andOrigin:self.origin1];
    
    [self.delegate shapeSpawned:self.shape1];
    
    self.shape2 = [Shape shapeWithType:STFive
                             andOrigin:self.origin2];
    
    [self.delegate shapeSpawned:self.shape2];
    
    self.shape3 = [Shape shapeWithType:STFive
                             andOrigin:self.origin3];
    
    [self.delegate shapeSpawned:self.shape3];
}

-(void)checkDragging:(CGPoint)pos {
    
    if ([self.shape1 containsPoint:pos] && !self.draggingShape) {
        self.draggingShape = self.shape1;
    }
    
    if ([self.shape2 containsPoint:pos] && !self.draggingShape) {
        self.draggingShape = self.shape2;
    }
    
    if ([self.shape3 containsPoint:pos] && !self.draggingShape) {
        self.draggingShape = self.shape3;
    }
    
}

-(void)Drag:(CGPoint)pos {
    
    [self.draggingShape OffsetShape:pos];
}

-(void)resetDrag {
    
    if (self.draggingShape==self.shape1)
        [self.shape1 OffsetShape:self.origin1];
    
    if (self.draggingShape==self.shape2)
        [self.shape2 OffsetShape:self.origin2];
    
    if (self.draggingShape==self.shape3)
        [self.shape3 OffsetShape:self.origin3];
    
    self.draggingShape = nil;
}

@end
