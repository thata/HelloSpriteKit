//
//  ViewController.m
//  HelloSpriteKit
//
//  Created by thata on 2014/03/23.
//  Copyright (c) 2014年 jp.co.esm. All rights reserved.
//

#import "ViewController.h"
#import "HelloScene.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SKView * skView = (SKView *)self.view;
    
    // シーンを生成
    SKScene * scene = [HelloScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // SKView へシーンを表示
    [skView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
