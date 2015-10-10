//
//  GameScene.h
//  1010!
//

//  Copyright (c) 2015 Luis von der Eltz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Yard.h"
#import "SpawnPanel.h"
#import "Shape.h"

@interface GameScene : SKScene <YardEvents,SpawnPanelEvents>

@property (nonatomic,strong) Yard* Yard;
@property (nonatomic,strong) SpawnPanel* spawnPanel;

@end
