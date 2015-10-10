//
//  Yard.h
//  1010!
//
//  Created by Luis von der Eltz on 14.09.15.
//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h> 

#import "Cube.h"

@protocol YardEvents <NSObject>

- (void) CubeAdded:(Cube*)cube;

@end

@interface Yard : NSObject

@property (nonatomic,strong) id<YardEvents> delegate;

@property (nonatomic,strong) NSArray* cellNodes;
@property (nonatomic,strong) NSMutableArray* cubes;

-(id) initWithScreenSize:(CGRect)screenRect;

-(CGPoint) pointOfCellAtX:(int)x Y:(int)y;

@end
