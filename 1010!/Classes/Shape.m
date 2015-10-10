//
//  Shape.m
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import "Shape.h"

@implementation Shape

+(instancetype)shapeWithType:(ShapeType)type andOrigin:(CGPoint)origin {
    return [[Shape alloc] initWithShapeWithType:type andOrigin:origin];
}

-(id) initWithShapeWithType:(ShapeType)type andOrigin:(CGPoint)origin {
    self = [super init];
    if (self) {
        
        if (type==STRandom) {
            type = (ShapeType) (arc4random() % (int) 7);
        }
        
        if (type==STSingle) {
            NSColor* c = [NSColor orangeColor];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            self.Cubes = @[c1];
            
        }else if(type==STDouble) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:0.495 green:0.715 blue:0.488 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y) AndColor:c];
            self.Cubes = @[c1,c2];
            
            
        }else if(type==STTriple) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:0.714 green:0.486 blue:0.592 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y) AndColor:c];
            Cube* c3 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y) AndColor:c];
            self.Cubes = @[c1,c2,c3];
            
        }else if(type==STCorner) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:1.000 green:0.303 blue:0.324 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y)
                                           AndColor:c];
            Cube* c3 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y-55)
                                           AndColor:c];
            
            self.Cubes = @[c1,c2,c3];

            
        }else if(type==STLCorner) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:0.894 green:0.855 blue:0.361 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y)
                                           AndColor:c];
            Cube* c3 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y)
                                           AndColor:c];
            
            Cube* c4 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y-55)
                                           AndColor:c];
            Cube* c5 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y-110)
                                           AndColor:c];
            
            self.Cubes = @[c1,c2,c3,c4,c5];
            
        }else if(type==STFive) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:0.721 green:0.562 blue:0.488 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y) AndColor:c];
            Cube* c3 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y) AndColor:c];
            Cube* c4 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+165, origin.y) AndColor:c];
            Cube* c5 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+220, origin.y) AndColor:c];
            
            self.Cubes = @[c1,c2,c3,c4,c5];
            
        }else if(type==STNine) {
            
            NSColor* c = [NSColor colorWithCalibratedRed:0.140 green:0.562 blue:0.488 alpha:1.000];
            
            Cube* c1 = [Cube cubeWithCenterPosition:origin AndColor:c];
            Cube* c2 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y) AndColor:c];
            Cube* c3 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y) AndColor:c];
            Cube* c4 = [Cube cubeWithCenterPosition:CGPointMake(origin.x, origin.y-55) AndColor:c];
            Cube* c5 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y-55) AndColor:c];
            Cube* c6 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y-55) AndColor:c];
            Cube* c7 = [Cube cubeWithCenterPosition:CGPointMake(origin.x, origin.y-110) AndColor:c];
            Cube* c8 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+55, origin.y-110) AndColor:c];
            Cube* c9 = [Cube cubeWithCenterPosition:CGPointMake(origin.x+110, origin.y-110) AndColor:c];
        
            self.Cubes = @[c1,c2,c3,c4,c5,c6,c7,c8,c9];
        }
        
    
    }
    return self;
}

-(BOOL)containsPoint:(CGPoint)pt {
    __block BOOL check =NO;
    [self.Cubes enumerateObjectsUsingBlock:^(Cube*cb, NSUInteger i, BOOL* stop) {
        if ([cb.node containsPoint:pt]) {
            check=YES;
        }
    }];
    return check;
}


-(void) OffsetShape:(CGPoint)pos {
    [self.Cubes enumerateObjectsUsingBlock:^(Cube* cb, NSUInteger i, BOOL* stop) {
        NSLog(@"Cube at [%f/%f] moves to [%f/%f]",cb.node.position.x,
              cb.node.position.y,pos.x,pos.y);
        
        cb.node.position = pos;
    }];
}


@end
