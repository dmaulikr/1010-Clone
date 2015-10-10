//
//  GameScene.m
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    
    self.Yard = [[Yard alloc] initWithScreenSize:self.scene.frame];
    self.Yard.delegate = self;
    
    [self.Yard.cellNodes enumerateObjectsUsingBlock:^(SKNode* node, NSUInteger i, BOOL* stop) {
        [self addChild:node];
    }];
    
    self.spawnPanel = [[SpawnPanel alloc] init];
    self.spawnPanel.delegate = self;
    [self.spawnPanel spawnShapes];

    self.scene.backgroundColor = [NSColor colorWithCalibratedWhite:0.121 alpha:1.000];
    
}

#pragma mark - Mouse Events
-(void)mouseDown:(NSEvent *)theEvent {
    CGPoint pt = [theEvent locationInNode:self];
    [self.spawnPanel checkDragging:pt];
}

-(void)mouseDragged:(NSEvent *)theEvent {
    CGPoint pt = [theEvent locationInNode:self];

    [self.spawnPanel Drag:pt];
}

-(void)mouseUp:(NSEvent *)theEvent {
    [self.spawnPanel resetDrag];
}

#pragma mark - GAME LOOP
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

#pragma mark - Yard Events
-(void)CubeAdded:(Cube *)cube {
    NSLog(@"CUBE ADDED TO YARD!");
}

-(void)shapeSpawned:(Shape *)shape {
    [shape.Cubes enumerateObjectsUsingBlock:^(Cube*cube,NSUInteger i, BOOL*stop) {
        [self addChild:cube.node];
    }];
}

@end
