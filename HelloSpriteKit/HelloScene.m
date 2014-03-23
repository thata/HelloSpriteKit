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
        
        myLabel.text = @"Hello Sprite Kit";
//        myLabel.fontSize = 10;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        [self addChild:myLabel];
        
//        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    }
    return self;
}

@end
