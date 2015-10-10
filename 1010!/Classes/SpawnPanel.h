//
//  SpawnPanel.h
//  1010!
//
//  Created by Luis von der Eltz on 16.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@protocol SpawnPanelEvents <NSObject>

-(void) shapeSpawned:(Shape*)shape;

@end

@interface SpawnPanel : NSObject

@property (nonatomic,strong) id<SpawnPanelEvents> delegate;

@property (nonatomic,strong) Shape*shape1;
@property (nonatomic,strong) Shape*shape2;
@property (nonatomic,strong) Shape*shape3;

@property (nonatomic) CGPoint origin1;
@property (nonatomic) CGPoint origin2;
@property (nonatomic) CGPoint origin3;


@property (nonatomic,strong) Shape* draggingShape;

-(void)checkDragging:(CGPoint)pos;
-(void)Drag:(CGPoint)pos;
-(void)resetDrag;

-(void)spawnShapes;

@end
