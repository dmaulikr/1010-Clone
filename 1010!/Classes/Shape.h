//
//  Shape.h
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cube.h"

typedef NS_ENUM(NSInteger, ShapeType) {
    STRandom=0,
    STSingle=1,
    STDouble=2,
    STTriple=3,
    STCorner=4,
    STLCorner=5,
    STFive=6,
    STNine=7
};

@interface Shape : NSObject

@property (nonatomic,strong) NSArray* Cubes;

+(instancetype) shapeWithType:(ShapeType)type
                  andOrigin:(CGPoint)origin;
-(id) initWithShapeWithType:(ShapeType)type
andOrigin:(CGPoint)origin;

-(BOOL) containsPoint:(CGPoint)pt;
-(void) OffsetShape:(CGPoint)pos;

@end
