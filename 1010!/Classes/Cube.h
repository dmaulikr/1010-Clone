//
//  Cube.h
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Cube : NSObject

-(id) initWithCenterPosition:(CGPoint)point
                    AndColor:(NSColor*)color;

+(instancetype) cubeWithCenterPosition:(CGPoint)point
                              AndColor:(NSColor*)color;


@property (nonatomic,strong) SKShapeNode* node;
@property (nonatomic) CGPoint center;
@property (nonatomic,strong) NSColor* color;

@end
