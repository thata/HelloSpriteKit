//
//  HelloScene.m
//  HelloSpriteKit
//
//  Created by thata on 2014/03/23.
//  Copyright (c) 2014年 jp.co.esm. All rights reserved.
//

#import "HelloScene.h"

@implementation HelloScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        // Hello Sprite Kit
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        
        myLabel.text = @"Hello Sprite Kit \U0001F363";
//        myLabel.fontSize = 10;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        [self addChild:myLabel];
        
        // シーンの枠から落ちないようにする        
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        // タッチした場所にブロックを生成
        SKSpriteNode *block = [SKSpriteNode
                               spriteNodeWithColor:[SKColor yellowColor]
                               size:CGSizeMake(50,50)];
        CGPoint location = [touch locationInNode:self];
        block.position = location;
        block.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:block.size];
        [self addChild:block];
    }
}

@end
